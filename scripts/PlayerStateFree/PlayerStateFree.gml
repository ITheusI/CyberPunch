// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function PlayerStateFree(){
	script_execute(get_input)


 var move = key_right - key_left;

 
 hspd = move * spd;
 vspd = vspd + grv;
 
 if place_meeting(x+hspd,y,obj_wall)
 {
  while(!place_meeting(x+sign(hspd),y,obj_wall))
  { 
	  x = x + sign(hspd);
  } 
hspd = 0;
 }
 x = x + hspd;
 
 if place_meeting(x,y+vspd,obj_wall)
 {
  while(!place_meeting(x,y+sign(vspd),obj_wall))
  {
	  y = y + sign(vspd);
  }
vspd = 0;
 }
 y = y + vspd;
 
 //PULO
 if place_meeting(x,y+1,obj_wall) and key_jump
 {
	 vspd -= 8;
 }
 
if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_jump;
	if (sign(vspd) > 0.5) sprite_index = spr_fall; else sprite_index = spr_jump;
}
else
{
	if (hspd != 0)
	{
		sprite_index = spr_walk;
	}
}
if hspd = 0 {
	if place_meeting(x,y+1,obj_wall){
		
		sprite_index = spr_idle
	}
}
if hspd  != 0 {
	if place_meeting(x,y+1,obj_wall){
		sprite_index = spr_walk;
	}
}
 
var flipped = direction;
var gun_x = x+48*(flipped);
var _xx = x +  lengthdir_x(15, image_angle);
var y_offset = lengthdir_y(-20, image_angle); 

if key_atk and global.hit > 0
{
	sprite_index = spr_atk
	with(instance_create_layer(_xx,y+10,"hit",obj_hit)){
	speed = 1;
	direction = -90 + 90 * other.image_xscale;
	image_angle = direction;
	}
	
}
if key_atk2 and global.hit > 0
{
	sprite_index = spr_atk2
	with(instance_create_layer(_xx,y+10,"hit",obj_hit)){
	speed = 1;
	direction = -90 + 90 * other.image_xscale;
	image_angle = direction;
	}
	
}



}

