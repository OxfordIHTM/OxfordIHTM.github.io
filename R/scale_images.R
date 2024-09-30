#'
#' Create sets of image sizes for web purposes
#' 
#' @param image Path to image to process
#' @param width A vector of widths to scale image to. Default to
#'   c("tn", "sm", "md", "lg") for thumbnail (150px), small (200px),
#'   medium (300px), and large (400px).
#' 
#' @returns Processed images in the same path as the input image but with
#'   annotated filenames.
#'
#' @examples
#' create_images_web(image = "images/oxford_codehub.png")
#'
#' @rdname scale_image
#' @export
#'

scale_images_web <- function(image, 
                             width = c("tn", "sm", "md", "lg"),
                             output_dir = dirname(image)) {
  Map(
    f = scale_image_web,
    image = image,
    width = width,
    output_dir = output_dir
  ) |>
    (\(x)
      {
        names(x) <- width
        x
      }
    )()
}

#'
#' @rdname scale_image
#' @export
#'

scale_image_web <- function(image, 
                            width = c("tn", "sm", "md", "lg"),
                            output_dir = dirname(image)) {
  width <- match.arg(width)
  sizes <- c("150", "200", "300", "400")
  size <- sizes[c("tn", "sm", "md", "lg") == width]
  
  output_path <- file.path(
    output_dir,
    paste0(
      basename(image) |> tools::file_path_sans_ext(), "_", width, ".png"
    )
  )
    
  ## Process image ----
  magick::image_read(image) |>
    magick::image_scale(geometry = size) |>
    magick::image_write(path = output_path, format = "png")
  
  ## Return path to output file ----
  output_path
}
