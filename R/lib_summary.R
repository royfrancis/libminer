 #' Summarise Installed Package Libraries
 #'
 #' Count installed packages by library path.
 #'
 #' @return A data frame with columns `Library` and `n_packages`.
 #' @examples
 #' lib_summary()
 #' @export
lib_summary <- function() {
  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[, "LibPath"])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c("Library", "n_packages")
  pkg_df
}
