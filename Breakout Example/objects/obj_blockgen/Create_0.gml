/// @description Insert description here
// You can write your code in this editor
randomize();
global.BLOCK_WIDTH = 64
global.BLOCK_HEIGHT = 32

x= room_width * 0.5
y= room_height * 0.1

num_rows = 10
num_columns = 16


for (c = -(num_columns/2);c < num_columns/2; c+=1){
	for (r = 0;r < num_rows; r+=1){
		
		instance_create_depth(x+(c*global.BLOCK_WIDTH),y+(r*global.BLOCK_HEIGHT),0,obj_block)

	}
}


