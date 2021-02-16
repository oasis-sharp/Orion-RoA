player_id.drill_id = id;

d_oil = 0;
d_max_oil = 6;
d_oil_recharge = 240;
d_oil_timer = 0;

can_be_grounded = true;
ignores_walls = false;

sprite_index = sprite_get("oildrill")

move_snap(32,1);

if(!place_meeting(x+33, y+1, asset_get( "par_block" )) and !place_meeting(x+33, y+1, asset_get( "par_jumpthrough" ))){
    x-=32
}
if(!place_meeting(x-33, y+1, asset_get( "par_block" )) and !place_meeting(x-33, y+1, asset_get( "par_jumpthrough" ))){
    x+=32
}

with(create_hitbox( AT_FSPECIAL, 1, x, y - 40 )){
    drill_create = 1;
}