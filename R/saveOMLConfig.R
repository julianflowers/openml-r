#' @title Saves a list of OpenML configuration settings to file.
#'
#' @description
#' The new configuration is automatically assigned via
#' \code{\link{setOMLConfig}} if all checks pass. If you don't set a certain option,
#' package defaults will be inserted into the file.
#'
#' @inheritParams setOMLConfig
#' @param overwrite [\code{logical(1)}]\cr
#'   Should an existing file be overwritten?
#'   Default is \code{FALSE}.
#' @family config
#' @export
saveOMLConfig = function(server = NULL, verbosity = NULL, apikey = NULL, cachedir = NULL,
  arff.reader = NULL, confirm.upload = NULL, overwrite = FALSE) {

  # we always store the config in the same place
  path = "~/.openml/config"

  assertFlag(overwrite)

  if (file.exists(path) && !overwrite) {
    stopf("Configuration file %s already exists. Set overwrite to TRUE to force overwriting.", path)
  }

  if (!file.exists(dirname(path))) {
    dir.create(dirname(path), showWarnings = TRUE, recursive = TRUE)
  }

  conf = setOMLConfig(server = server, verbosity = verbosity,
    apikey = apikey, cachedir = cachedir,
    arff.reader = arff.reader, confirm.upload = confirm.upload)
  conf = as.list(conf)
  lines = paste(names(conf), conf, sep = "=")
  con = file(path, "w")
  on.exit(close(con))
  writeLines(lines, con = con)
}
