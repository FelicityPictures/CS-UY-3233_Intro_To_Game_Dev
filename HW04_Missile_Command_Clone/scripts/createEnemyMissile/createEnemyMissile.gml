list = argument0
startX = argument1
startY = argument2
goalX = argument3
goalY = argument4

newMissile = instance_create_depth(goalX, goalY, 0, obj_missile)

newMissile.startX = startX
newMissile.startY = startY
newMissile.x = startX
newMissile.y = startY
newMissile.angle = point_direction(startX, startY, goalX, goalY)
newMissile.goalLength = sqrt(sqr(goalX-startX) + sqr(goalY-startY))
newMissile.color = c_red


newMissile.velocity = 1
newMissile.friendly = false

ds_list_add(list, newMissile)