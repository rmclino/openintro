#' London Borough Boundaries
#'
#' This dataset contains the coordinates of the boundaries of all 32 boroughs
#' of the Greater London area.
#'
#' Map data was made available through the Ordnance Survey Open Data
#' initiative.  The data use the
#' \href{http://www.ordnancesurvey.co.uk/oswebsite/gps/information/coordinatesystemsinfo/guidetonationalgrid/page1.html}{National Grid} coordinate system,
#' based upon eastings (\code{x}) and northings (\code{y}) instead of longitude and latitude.
#'
#' The \code{name} variable covers all 32 boroughs in Greater London:
#' \code{Barking & Dagenham}, \code{Barnet}, \code{Bexley}, \code{Brent},
#' \code{Bromley}, \code{Camden}, \code{Croydon}, \code{Ealing},
#' \code{Enfield}, \code{Greenwich}, \code{Hackney}, \code{Hammersmith &
#' Fulham}, \code{Haringey}, \code{Harrow}, \code{Havering}, \code{Hillingdon},
#' \code{Hounslow}, \code{Islington}, \code{Kensington & Chelsea},
#' \code{Kingston}, \code{Lambeth}, \code{Lewisham}, \code{Merton},
#' \code{Newham}, \code{Redbridge}, \code{Richmond}, \code{Southwark},
#' \code{Sutton}, \code{Tower Hamlets}, \code{Waltham Forest},
#' \code{Wandsworth}, \code{Westminster}
#'
#' @name london_boroughs
#' @docType data
#' @format A data frame with 45341 observations on the following 3 variables.
#' \describe{
#' \item{borough}{Name of the borough.}
#' \item{x}{The "easting" component of the coordinate, see details.}
#' \item{y}{The "northing" component of the coordinate, see details.}
#' }
#' @seealso london_murders
#' @source
#' \url{https://www.ordnancesurvey.co.uk/opendatadownload/products.html}
#'
#' Contains Ordinance Survey data, Crown copyright and database right 2012,
#' used under the
#' \href{Open Data License}{http://www.ordnancesurvey.co.uk/oswebsite/docs/licences/os-opendata-licence.pdf}.
#' @keywords datasets London map borough
#' @examples
#'
#' library(dplyr)
#' library(ggplot2)
#'
#' # Calculate number of murders by borough
#' london_murders_counts <- london_murders %>%
#'   group_by(borough) %>%
#'   add_tally()
#' # Add number of murders to geographic boundary data
#' london_boroughs_murders <- inner_join(london_boroughs, london_murders_counts, by = "borough")
#'
#' ggplot(london_boroughs_murders) +
#'   geom_polygon(aes(x = x, y = y, group = borough, fill = n), colour = "white") +
#'     scale_fill_distiller(direction = 1) +
#'   labs(x = "Easting", y = "Northing", fill = "Number of murders")
#'
"london_boroughs"
