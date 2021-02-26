if (attack == AT_NSPECIAL) {

    if(player_id.spanner_id == noone){
        vsp = player_id.spanner_vsp;
        hsp = player_id.spanner_hsp;
        transcendent = 1;
        player_id.spanner_id = id;
        destroy_fx = 305;
        hit_effect = 305;
        spanner_bounce = 0;
    }
    
    transcendent = 1;

    if((abs(hsp)+abs(vsp))/2)>1 {
        if(hsp > 0 or hsp = 0){
            proj_angle -= 5*((abs(hsp)+abs(vsp))/2)
        }
        else{
            proj_angle += 5*((abs(hsp)+abs(vsp))/2)
        }
    }

    if(place_meeting(x+hsp, y+vsp, asset_get("par_block"))){

        vsp*=0.8;
        hsp*=0.9;
        spanner_bounce += 1;
        if(abs(hsp) < 2 and abs(vsp) < 2){
            instance_destroy();
            exit;
        }
    }

    if(place_meeting(x+hsp, y+vsp,asset_get("par_jumpthrough")) and vsp > 0 and !place_meeting(x, y, asset_get("par_jumpthrough"))){

        vsp*=0.8;
        hsp*=0.9; 
        spanner_bounce += 1;
        if(abs(hsp) < 2 and abs(vsp) < 2){
            instance_destroy();
            exit;
        }       
    
    }

    if(spanner_bounce > 4){
        instance_destroy();
        exit;
    }
 
    kb_angle = point_direction(x, y, player_id.x, player_id.y-1*(abs(abs(x)-abs(player_id.x))));

    if(x > room_width or x < 0 or y > room_height){
        instance_destroy();
        exit;
    }

}



if (attack == AT_FSPECIAL) {

    if(x > room_width or x < 0 or y > room_height){
        instance_destroy();
        exit;
    }


    if(variable_instance_exists(id, "drill_create")){

        if(drill_create = 1){
            drill_create = 0;
        }
        
        if(player_id.drill_exists and drill_create != 2){
            hitbox_timer = length-(player_id.puddleLength-1);
        }

        if(!player_id.drill_exists){
            drill_create = 2;
        }
    }


    if(place_meeting(x, y+1, asset_get("par_block")) or (!free and place_meeting(x, y+1, asset_get( "par_jumpthrough" )))){

        if(sprite_index != sprite_get("oilFloor")){

            depth = 10;
            image_index = 0;
            sound_play(asset_get("sfx_land_med"));

            sprite_index = sprite_get("oilFloor");
            collision_sprite = sprite_get("oilFloor");
            mask_index = sprite_get("oilFloor");

            move_snap(32,1);

            if(!place_meeting(x+33, y+1, asset_get( "par_block" )) and !place_meeting(x+33, y+1, asset_get( "par_jumpthrough" ))){
                x-=32
            }
            if(!place_meeting(x-33, y+1, asset_get( "par_block" )) and !place_meeting(x-33, y+1, asset_get( "par_jumpthrough" ))){
                x+=32
            }

            collision_sprite = sprite_get("oilFloorMask");
            mask_index = sprite_get("oilFloorMask");

        }

        hsp*=0.8;
        
        if(image_index < player_id.puddleLength-1){
            img_spd = 1;
        }
        else{
            image_spd = 0;
            image_index = player_id.puddleLength-1;
        }

        transcendent = 1;
        projectile_parry_stun = 0;

        if(place_meeting(x-32, y-16, player_id) or place_meeting(x+32, y-16, player_id)){
            with(player_id){
                onOil = 1;
            }
        }
    }


    if(sprite_index != sprite_get("oilFloor") and image_index > 5){
        img_spd = 0;
    }
    
    if(hitbox_timer > length-(player_id.puddleLength-1)){
        img_spd = -1;
        
    }
    
}