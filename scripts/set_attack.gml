if (attack == AT_DSPECIAL && free){
    attack = AT_DAIR;
}
else{
    if(drill_exists and attack == AT_DSPECIAL){
        attack = AT_DSPECIAL_2;
        instance_destroy(drill_id);
    }
}

user_event(13);