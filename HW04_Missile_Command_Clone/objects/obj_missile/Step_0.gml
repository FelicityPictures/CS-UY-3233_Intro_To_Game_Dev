currentLength += velocity

x = startX + lengthdir_x(currentLength, angle)
y = startY + lengthdir_y(currentLength, angle)

if(currentLength >= goalLength){
	instance_destroy()
}