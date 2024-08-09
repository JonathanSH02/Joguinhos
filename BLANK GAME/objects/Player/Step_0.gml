#region controles
key_right = keyboard_check(ord("D"))
key_left = keyboard_check(ord("A"))
key_jump = keyboard_check(vk_space)
key_atk = keyboard_check_pressed(ord("X"))
#endregion 

#region movimentação
var move = key_right - key_left 

hspd = move * spd;

vspd = vspd + grv;

if( hspd != 0) image_xscale = sign(hspd);

//horizontal

if place_meeting(x+hspd,y,piso){
	while(!place_meeting(x+sign(hspd),y,piso)){
		x = x + sign(hspd);
	}
hspd = 0;
}
x = x + hspd;

//vertical

if place_meeting(x,y+vspd,piso){
	while(!place_meeting(x,y+sign(vspd),piso)){
		y = y + sign(vspd);
	}
vspd = 0;
}
y = y + vspd;

//jump

if place_meeting(x,y+1,piso) and key_jump{
 vspd -= 12;	
}
#endregion

#region ataque



#endregion

if global.life < 0{
	game_restart();
}

if moeda = 3{
	room_goto_next()
}

#region	sprites
if(!place_meeting(x,y+1,piso)){
	sprite_index = BiaJumps;
	if (sign(vspd) > 0.5) sprite_index = BiaDown; else sprite_index = BiaJumps;	
}else{
	if(hspd != 0){
		sprite_index = BiaRun;
	}
}
if hspd = 0 {
	if place_meeting(x,y+1,piso){
		sprite_index = BiaStop;
	}
}
if hspd != 0 {
	if place_meeting(x,y+1,piso){
		sprite_index = BiaRun;
	}
}