class Cabbage extends Item{
	// Requirement #1: Complete Cabbage Class
  PImage img;
  
  Cabbage(float x, float y){
    super(x, y);
    img = cabbage;
    isAlive = true;
  }
  
  void display(){
    if(isAlive){
      image(img, x, y);
    }
  }
  
  void checkCollision(){
    if( x + SOIL_SIZE > player.x    // r1 right edge past r2 left
        && x < player.x + SOIL_SIZE    // r1 left edge past r2 right
        && y + SOIL_SIZE > player.y    // r1 top edge past r2 bottom
        && y < player.y + SOIL_SIZE) { // r1 bottom edge past r2 top
        
        isAlive = false;
        player.health ++;
        x = y = -1000;
     }else{
       isAlive = true;      
    }
  }

    

	/*
	Code for Reference:

		for(int i = 0; i < cabbageX.length; i++){

			// Display Cabbage
			image(cabbage, cabbageX[i], cabbageY[i]);

			// Check collision with player
			if(player.health < player.PLAYER_MAX_HEALTH
			&& isHit(cabbageX[i], cabbageY[i], SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){

				player.health ++;
				cabbageX[i] = cabbageY[i] = -1000; // Now that they're objects, toggle isAlive instead of throwing them away from screen

			}

		}

	*/
}
