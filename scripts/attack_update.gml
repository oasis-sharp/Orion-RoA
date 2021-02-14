//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if(special_pressed){
        if(spanner_exists = 1){
            window = 4;
            window_timer = 0;  
        }
    }
        if(!joy_pad_idle){
            tempJoy = joy_dir;
            
        }


    if(window = 1){
        vsp*=0;
        hsp*=0.9;

        can_fast_fall = 0;
        can_move = 0;
        can_jump = 1;
    
       if(!special_down){
            window_timer = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)
        }

        if(shield_pressed){
            window = 3;
        }

        if(abs(vsp) < 1){
            vsp = 0;
        }
        if(abs(hsp) < 1){
            hsp = 0
        }



        if(tempJoy != noone){
            spanner_hsp = lengthdir_x(throwSpeedx, tempJoy)
            spanner_vsp = lengthdir_y(throwSpeedy, tempJoy)
        }
        else{
            spanner_hsp = 0;
            spanner_vsp = 0;
        }

    }

}




if (attack == AT_FSPECIAL){
    if(special_pressed){
        if(!oil > 0){
            window = 4;
            window_timer = 0;  
        }
    }

    if(window = 2){
        if(window_timer == 1){
            oil-=1;
        }
    }

}


if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}


if (attack == AT_DSPECIAL){
    if (window == 2 and window_timer = 1){
        instance_create(x, y, "obj_article2");
    }
    
    can_fast_fall = false;
    can_move = false
}


if(attack == AT_EXTRA_1){
    if(window = 2 and drill_exists == 1){
        if(oil < max_oil and drill_id.d_oil > 0){
            oil+=1;
            drill_id.d_oil-=1;
        }
    }
}