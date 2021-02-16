// comment please dont explode 

if ("oil" not in self) exit;

draw_sprite(sprite_get("oilmeter"), 0, temp_x, temp_y);

if(spanner_exists = 0){
    draw_sprite(sprite_get("spanner"), 0, temp_x+200, temp_y-8);
}

var oil_temp = oil;

while(oil_temp > 0){
    draw_sprite(sprite_get("oilblob"), 0, (20*oil_temp)+temp_x-12, temp_y);
    oil_temp-=1;
}


//==== MUNOPHONE ====//

user_event(11); 