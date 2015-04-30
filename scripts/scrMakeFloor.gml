instance_create(x,y,objFloor)

room_speed = 5000;

area = 3

if area = 1 and random(2) < 1
{
    instance_create(x,y+32,objFloor)
}

if area = 1
trn = choose(0,0,0,0,0,0,0,0,0,90,-90,90,-90,180)
if area = 2
trn = choose(0,0,0,0,0,0,0,0,90,-90,90,-90,180)
if area = 3
trn = choose(0,0,0,0,90,-90)
if area = 4
trn = choose(0,0,0,0,90,-90,180)
direction += trn

x += lengthdir_x(32,direction)
y += lengthdir_y(32,direction)

if area = 3
{
if random(20 +instance_number(objFloorMaker)) > 21
{
    instance_destroy()
}
if random(170) < 1
    instance_create(x,y,objFloorMaker)
}

if(instance_number(objFloor) < 250)
{
    scrMakeFloor();
}
if(instance_number(objWall) < 25)
{
    scrMakeWalls();
}
