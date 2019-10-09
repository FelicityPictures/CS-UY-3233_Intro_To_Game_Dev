startX = argument0
startY = argument1
goalX = argument2
goalY = argument3

newMissile = instance_create_depth(goalX, goalY, 0, obj_missile)

newMissile.startX = startX
newMissile.startY = startY
newMissile.x = startX
newMissile.y = startY
newMissile.angle = point_direction(startX, startY, goalX, goalY)
newMissile.goalLength = sqrt(sqr(goalX-startX) + sqr(goalY-startY))
newMissile.color = c_aqua

// what makes it a slower missile
newMissile.velocity = 15