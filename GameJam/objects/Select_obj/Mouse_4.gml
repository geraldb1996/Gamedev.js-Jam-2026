/// @description Level Selection based on current image
switch (image_index) {
    case 0:
        show_message("Going to Level 1");
        // room_goto(Room_Level1); 
        break;
        
    case 1:
        show_message("Going to Level 2");
        // room_goto(Room_Level2);
        break;
        
    case 2:
        show_message("Going to Level 3");
        // room_goto(Room_Level3);
        break;
        
    default:
        show_message("Unknown level");
        break;
}
