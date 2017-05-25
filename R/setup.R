#' 
#' Automatically create issues on the repo
#' 
#' @description This function should be run by instructors to setup the issues
#' that will be created for students in each class. The idea is that they fix and 
#' close out the issues in each instance of the course, and we reset the code to
#' have errors before the next course. We also need to reinstate the issues
#' associated with the errors. This function should automate that. 
#' 
#' @param repo_name string, name for the new repository
#' @param issue_json file path indicating the JSON file to be used to define what 
#' issues to create. Defaults to the `issuetemplates.json` file in this package.
#' @param org string, GitHub organization to create repository. Defaults to "USGS-R"
#' @param ctx GitHub context for authentication, see \link[grithub]{get.github.context}
#' 
#' @importFrom grithub get.github.context
#' @importFrom grithub create.issue
#' 
#' @export
createNewIssues <- function(repo_name, issue_json="data/issuetemplates.json", 
                            org="USGS-R", ctx = get.github.context()){
  # make sure that the repo exists
  stopifnot(repo_name %in% getRepoNames(org=org))
  
  # make issues from the issue template JSON file
  issue_content <- readLines(issue_json)
  new_issues <- lapply(issue_content, create.issue, owner=org, repo=repo_name, ctx=ctx)
  
  return(new_issues)
}
