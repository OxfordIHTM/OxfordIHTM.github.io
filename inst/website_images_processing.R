# Process website images -------------------------------------------------------

## Load project functions ----
for (f in list.files("R", full.names = TRUE)) source(f)

## Process images in images folder ----

### Process all images ----
lapply(
  X = list.files(path = "images", full.names = TRUE),
  FUN = scale_images_web,
  output_dir = "images"
)

### Process codehub image only ----
scale_image_web(image = "images/oxford_codehub.png", width = "lg")

### Process ihealth image only ----
scale_image_web(image = "images/ihealth_square.png", width = "lg")

### Process ihealth base only ----
#scale_image_web(image = "images/ihealth_base_pos.png", width = "lg")
scale_images_web(image = "images/ihealth_base_pos.png")
