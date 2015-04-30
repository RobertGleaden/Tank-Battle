if(gamepad_is_supported())
{
    if(gamepad_is_connected(0))
     {
     
     //Left Stick
      if joystick_xpos(1)>=0.2
      {
         x += (joystick_xpos(1)*4);
      }
      
     if joystick_xpos(1)<=-0.2
     {
        x += (joystick_xpos(1)*4);
     }
     
     if joystick_ypos(1)>=0.2
     {
        y += (joystick_ypos(1)*4);
     }
     
    if joystick_ypos(1)<=-0.2
    {
        y += (joystick_ypos(1)*4);
    }   
    
    //RightAnalogStickRotateCharacter
    if joystick_rpos(1)<=-0.2
    {
        image_angle = point_direction(x,y, x + joystick_upos(1), y + joystick_rpos(1));
    }
    
    if joystick_rpos(1)>=0.2
    {
        image_angle = point_direction(x,y, x + joystick_upos(1), y + joystick_rpos(1));
    }
    
    if joystick_upos(1)<=-0.2
    {
        image_angle = point_direction(x,y, x + joystick_upos(1), y + joystick_rpos(1));
    }
    if joystick_upos(1)>=0.2
    {
        image_angle = point_direction(x,y, x + joystick_upos(1), y + joystick_rpos(1));
    }
     
     if(gamepad_button_check_pressed(0,gp_shoulderrb))
     {
          bullet = instance_create(obj_player.x - 16,obj_player.y - 16,objBullet);
          bullet.direction = obj_player.image_angle;
          bullet.speed = 8;
          global.Ammo -= 1;
          checkBulletSize();
     } 
     
     if(gamepad_button_check_pressed(0,gp_select))
     {
        room_goto(rmTitle);
     }
  }
}
