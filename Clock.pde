class Clock extends Item{
	// Requirement #2: Complete Clock Class
  PImage img;
  
  Clock(float x, float y){
    super(x, y);
    img = clock;
    isAlive = true;
  }
  
  void display(){
    if(isAlive){
      image(img, x, y);
    }
  }
  
  void addTime(float seconds){
    gameTimer += round(seconds * 60);
  }
  
  void checkCollision(){
    if( x + SOIL_SIZE > player.x    // r1 right edge past r2 left
        && x < player.x + SOIL_SIZE    // r1 left edge past r2 right
        && y + SOIL_SIZE > player.y    // r1 top edge past r2 bottom
        && y < player.y + SOIL_SIZE) { // r1 bottom edge past r2 top
        addTime(15);
        isAlive = false;
        player.health ++;
        x = y = -1000;
     }else{
       isAlive = true;      
    }
  }
	/*
	Code for Reference:

		for(int i = 0; i < clockX.length; i++){

			// Display Clock
			image(clock, clockX[i], clockY[i]);

			// Check collision with player
		    if(isHit(clockX[i], clockY[i], SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){

				addTime(CLOCK_BONUS_SECONDS);
				clockX[i] = clockY[i] = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen

			}

		}
	*/
}
