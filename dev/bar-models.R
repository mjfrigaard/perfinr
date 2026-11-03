# regenerate the book's bar models with a colorblind safe palette ----
# run from the package root:
#   Rscript --no-init-file dev/bar-models.R [path/to/fm-finance]
# reads every chunk labeled *-bar-model (or *-bar-model-intro) in the book
# chapters, swaps the book colors for okabe-ito colors, and saves each plot
# to man/figures/<chapter-name>-<label>.png

library(ggplot2)

args <- commandArgs(trailingOnly = TRUE)
book_dir <- if (length(args) > 0) args[[1]] else "~/projects/books/fm-finance"
book_dir <- path.expand(book_dir)
out_dir <- file.path("man", "figures")

chapters <- c(
  "income", "tracking_spending", "budgeting", "managing_debt",
  "emergency_fund", "savings_strategies", "high_yield_accounts",
  "automating_savings", "investing_basics", "retirement_accounts",
  "index_funds", "asset_allocation", "taxes", "insurance",
  "financial_goals", "major_purchases", "estate_planning"
)

# book color = okabe-ito color ----
color_map <- c(
  "#48a56a" = "#0072B2",
  "#f44242" = "#D55E00",
  "#0e9aa7" = "#009E73",
  "#86ddcd" = "#99D8C9",
  "#f0cfcf" = "#F5C3A3",
  "#5ec8be" = "#56B4E9",
  "#e07070" = "#E69F00",
  "#8b1a1a" = "#7F3B08"
)

swap_colors <- function(code) {
  for (book_col in names(color_map)) {
    code <- gsub(book_col, color_map[[book_col]], code, ignore.case = TRUE)
  }
  code
}

# split a .qmd into r chunks: label, fig-asp, and code ----
read_chunks <- function(path) {
  lines <- readLines(path, warn = FALSE)
  starts <- grep("^```\\{r", lines)
  fences <- grep("^```\\s*$", lines)
  lapply(starts, function(s) {
    e <- fences[fences > s][1]
    body <- lines[seq(s + 1, e - 1)]
    opts <- grep("^#\\|", body, value = TRUE)
    opt <- function(key) {
      hit <- grep(paste0("^#\\|\\s*", key, ":"), opts, value = TRUE)
      if (length(hit) == 0) return(NA_character_)
      trimws(sub(paste0("^#\\|\\s*", key, ":\\s*"), "", hit[[1]]))
    }
    list(
      label = opt("label"),
      asp = as.numeric(opt("fig-asp")),
      code = body[!grepl("^#\\|", body)]
    )
  })
}

# render one chunk to png ----
save_bar_model <- function(chunk, chapter) {
  env <- new.env(parent = globalenv())
  plot <- eval(parse(text = swap_colors(chunk$code)), envir = env)
  if (!inherits(plot, "ggplot")) {
    stop("chunk did not return a ggplot", call. = FALSE)
  }
  asp <- if (is.na(chunk$asp)) 2 / 3 else chunk$asp
  file <- file.path(
    out_dir,
    paste0(gsub("_", "-", chapter), "-", chunk$label, ".png")
  )
  ggsave(file, plot, width = 6, height = 6 * asp, dpi = 150, bg = "white")
  file
}

# run ----
dir.create(out_dir, showWarnings = FALSE, recursive = TRUE)
for (chapter in chapters) {
  chunks <- read_chunks(file.path(book_dir, paste0(chapter, ".qmd")))
  is_bar <- vapply(
    chunks,
    function(x) isTRUE(grepl("bar-model(-intro)?$", x$label)),
    logical(1)
  )
  for (chunk in chunks[is_bar]) {
    result <- tryCatch(
      save_bar_model(chunk, chapter),
      error = function(e) paste("FAILED:", conditionMessage(e))
    )
    cat(chapter, chunk$label, result, "\n")
  }
}

cat("\n=== Session Info ===\n")
sessionInfo()
