// Destroy the popup and this close button
if (instance_exists(popup_obj)) {
    instance_destroy(popup_obj);
}
instance_destroy(self);
