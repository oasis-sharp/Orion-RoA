hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .11;
walk_anim_speed = .2;
dash_anim_speed = .18;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6;
dash_speed = 5;
dash_turn_time = 8;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = 0.5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.3;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .8; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 28; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 12; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier7

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .15; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 4;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 3;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;

//roll speed
roll_forward_max = 8; 
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// oil variables
oil = 6;
max_oil = 6;
drill_id = noone;
drill_exists = 0;

// hud positions
hudx = -2;
hudy = 34;

//spanner variables
spanner_id = noone;
spanner_exists = 0;

spanner_vsp = 0;
spanner_hsp = 0;

throwSpeedx = 15;
throwSpeedy = 15;
canThrow = 0;
spanEffCool = 0;

//other stuff
onOil = 0;
tempJoy = 0;

//puddle variables
puddleLength = 10;


//default movement variables
d_wave_land_adj = wave_land_adj;
d_wave_friction = wave_friction;
d_initial_dash_speed = initial_dash_speed;
d_dash_speed = dash_speed;
d_ground_friction = ground_friction;


d_leave_ground_max = leave_ground_max;
d_max_jump_hsp = max_jump_hsp;
d_jump_speed = jump_speed;

//==== MUNOPHONE ====//

spr_oilFloor = sprite_get("oilFloor")
spr_spanner = sprite_get("spanner")
spr_spin = sprite_get("spin")

user_event(14);