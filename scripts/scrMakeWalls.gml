if !place_meeting(x,y,obj_player) and !place_meeting(x,y,objEnemy) and !place_meeting(x,y,objFloor)
{
if random(5) < 1
{
myx = x+choose(0,16)
myy = y+choose(0,16)

    instance_create(myx,myy,objWall)
}
}


if(!place_meeting(x,y,obj_player) and !place_meeting(x,y,objEnemy) and instance_number(objAmmoPickup) < 1 )
{
    if(random(20) < 1)
    {
        xx = x+choose(0,16)
        yy = y+choose(0,16)
            instance_create(xx,yy,objAmmoPickup);
    }
    
}
if(!place_meeting(x,y,obj_player) and !place_meeting(x,y,objEnemy) and !place_meeting(x,y,objAmmoPickup) and instance_number(objHealthPickup) < 1)
{
    if(random(25) < 1)
    {
        xx1 = x+choose(0,16);
        yy1 = y+choose(0,16);
        instance_create(xx1,yy1,objHealthPickup);
    }
    
}

