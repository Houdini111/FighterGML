///player_not_on()
if( collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_player, false, true) == noone ) 
    { return true; }
else { return false; }
