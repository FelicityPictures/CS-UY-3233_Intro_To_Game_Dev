/// @description Insert description here
// You can write your code in this editor
if instance_position(x+xspd,y,obj_block){
	near_block = instance_nearest(x+xspd,y,obj_block)
	near_block.block_health -=1
	xspd *= -1
	ShakeScreen(4, 0.2)
}

if instance_position(x,y+yspd,obj_block){
	near_block = instance_nearest(x,y+yspd,obj_block)
	near_block.block_health -=1
	yspd *= -1
	ShakeScreen(4, 0.2)
}

if instance_position(x,y+yspd,obj_paddle){
	yspd *= -1
	ShakeScreen(2, 0.2)
}



if x > room_width
or x < 0{
	xspd *= -1	
}

if y > room_height
or y < 0{
	yspd *= -1	
}

x += xspd
y += yspd


/*
if collision_circle(x,y,8,obj_block,false,false){
	near_block = instance_nearest(x,y,obj_block)
	near_block.block_health -=1
	
}