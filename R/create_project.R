# create_project
#
# This function uses base R to create a set of project directories and a README
# file
#

create_project <- function(project_name = "project") {
  dir.create(proj_name)
  dir.create(paste0(proj_name, "/anaylsis_data"))
  dir.create(paste0(proj_name, "/original_data"))
  dir.create(paste0(proj_name, "/documents"))
  dir.create(paste0(proj_name, "/code"))
  file.create(paste0(proj_name, "/README.txt"))
}
