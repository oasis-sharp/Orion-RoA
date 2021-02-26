// comment
if(animOil){
    if(state = PS_WAVELAND and image_index < 3){
        sprite_index = sprite_get("oilWaveland");
        spawn_hit_fx( x, y, wavelandEffect);
    }
}

if(attack == AT_NSPECIAL and state == PS_ATTACK_AIR){
    sprite_index = sprite_get("nspecial_air")
}