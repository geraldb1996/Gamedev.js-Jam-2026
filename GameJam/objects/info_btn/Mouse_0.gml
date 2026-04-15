// Left Click - Show popup if not already open
if (!instance_exists(popup_obj)) {
    instance_create_layer(0, 0, "Instances", popup_obj);
}
