 key_right = keyboard_check(ord("D"));
 key_left = keyboard_check(ord("A"));
 key_jump = keyboard_check(vk_space);
 
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
