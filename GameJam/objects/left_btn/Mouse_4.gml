if (instance_exists(Select_obj)) {
    with (Select_obj) {
        image_index = (image_index + image_number - 1) % image_number;
    }
}
