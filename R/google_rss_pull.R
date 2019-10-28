# Explanation:
# This script pulls and saves xml files from generated news searches using Google News Alerts
# Each search in v.1.0 is a simple "ethnic-group" search ("Acher", "Malay", etc.)
#
# To create a google search alert:
# 1. Go to https://www.google.com/alerts
# 2. Enter a search query in the search box at the top of the page
# 3. In settings change the following:
#     a. Change "How Often" to "As-it-happens"
#     b. Change "Sources" to "News"
#     c. Change "How many" to "All Results"
#     d. Change "Deliver" to RSS
# 4. Save the RSS html

google_rss_pull <- function(url, group, country) {

  # Function for streamlining the process of pulling RSS feeds
  # Used primarily for the AMAR scraping project
  # Arguments:
  #      url: the html for the RSS page to be scraped
  #    country: the name of the country being scraped


  file_name <- paste(country,"/",group,"-",as.numeric(as.POSIXct(Sys.time())),".xml",sep = "")

  download.file(url, file_name,
                quiet = FALSE, mode = "w",
                cacheOK = TRUE,
                extra = getOption("download.file.extra"))
}
