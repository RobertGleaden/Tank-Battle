if(gamepad_button_check(0,gp_padu))
{
    motion_set(90,4);
}
if(gamepad_button_check(0,gp_padd))
{
    motion_set(270,4);
}
if(gamepad_button_check(0,gp_padr))
{
    motion_set(0,4);
}
if(gamepad_button_check(0,gp_padl))
{
    motion_set(180,4);
}
if(gamepad_button_check(1,gp_face1))
{
    bullet = instance_create(x + lengthdir_x(15,image_angle),y + lengthdir_y(15,image_angle),objBullet)
    bullet.direction = image_angle;
    bullet.speed = 5;
    global.Ammo -= 1;
    checkBulletSize();

}
