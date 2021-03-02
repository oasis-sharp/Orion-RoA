//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){

    if(special_pressed){
        if(spanner_exists = 1){
            window = 5;
            window_timer = 0;  

        }
    }
        if(!joy_pad_idle){
            tempJoy = joy_dir;
            
        }

    if(window < 3){

        can_fast_fall = 0;
        can_move = 0;
        can_jump = 1;
    }

    if(window = 5){
        if(collision_rectangle( x+32, y+32, x-32, y-32, spanner_id, false, true)){
            instance_destroy(spanner_id);
            spanner_exists = 0;
            window = 2;
        }
    }

    if(window = 2){
    
       if(!special_down){
            window_timer = get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)
        }
        else{
            if(free){
                vsp=0;
                hsp*=0.95;
            }
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

            var throwDir = 1;

        if(spr_dir = 1){
            if(tempJoy >= 90 and tempJoy < 270){
                throwDir = -1;
            }
        }

        if(spr_dir = -1){
            if(!(tempJoy >= 90 and tempJoy < 270)){
                throwDir = -1;
            }
        }


            spanner_hsp = lengthdir_x(throwSpeedx*throwDir, tempJoy)
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

if (attack == AT_JAB && window == 1){
    clear_button_buffer( PC_ATTACK_PRESSED );
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
    can_move = false
}


if(attack == AT_EXTRA_1){
    if(window == 2 and drill_exists == 1){
        if(oil < max_oil and drill_id.d_oil > 0){
            oil+=1;
            drill_id.d_oil-=1;
        }
        hsp/=2;
        can_move = 0;
    }

    if(window == 1){
        can_attack = 1;
        can_jump = 1;
        can_shield = 1;
        can_move = 1;
        hsp/=1.5;
    }
}