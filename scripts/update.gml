
//==== MUNOPHONE ====//

user_event(14);

// comment so the game doesn't crash lmao 


if(instance_exists(spanner_id)){
    spanner_exists = 1;
}
else{
    spanner_exists = 0;
    spanner_id = noone;
}


if(can_attack = 1){
    canThrow = 0
}

if(onOil = 1){
    wave_land_adj = 2;
    wave_friction = 0; 
    dash_speed = 10;
    ground_friction = 0;
    initial_dash_speed = 12;


    leave_ground_max = 14; 
    max_jump_hsp = 10; 
    jump_speed = 13;

}
else{

    wave_land_adj = d_wave_land_adj; 
    wave_friction = d_wave_friction; 
    initial_dash_speed = d_initial_dash_speed;
    dash_speed = d_dash_speed;
    ground_friction = d_ground_friction;


    leave_ground_max = d_leave_ground_max; 
    max_jump_hsp = d_max_jump_hsp; 
    jump_speed = d_jump_speed;
}

if(onOil = 1){
    onOil = 0;
}

if(state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND){
    tempJoy = noone;
}

if(spanner_exists and spanEffCool <= 0){
    instance_create(spanner_id.x, spanner_id.y, "obj_article1");
    spanEffCool = 1;
}

spanEffCool-=1;

