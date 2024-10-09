#'
#' Get and process student country data
#' 

map_data <- function() {
  read.csv(
    file = "https://raw.githubusercontent.com/OxfordIHTM/infohub/refs/heads/main/data-raw/student_country.csv"
  )
}



leaflet::leaflet() |>
  mapboxapi::addMapboxTiles(
    style_id = "cjb38c92p1vsw2slyvdv9t4i7",
    username = "ernestguevarra"
  ) |>
  leaflet::setView(lng = 0, lat = 0, zoom = 3) |>
  leaflet::addCircleMarkers(
    data = map_data(),
    radius = 1,
    fillColor = "darkgreen",
    weight = 1,
    opacity = 1,
    color = "darkgreen",
    fillOpacity = 0.6#,
    # popup = ~tooltip |>
    #   lapply(htmltools::HTML),
    # popupOptions = popupOptions(
    #   maxHeight = 500
    # )
  ) |>
  htmlwidgets::onRender("
    function(el, x) {
      this.on('baselayerchange', function(e) {
        e.layer.bringToBack();
      })
    }
  ")