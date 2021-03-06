 /*
 $$$$$$\   $$$$$$\  $$$$$$\ $$$$$$$$\       $$$$$$$\   $$$$$$\  $$\    $$\         $$$$$$\   $$$$$$\ $$\     $$\  $$$$$$\ $$$$$$$$\ $$$$$$$$\ 
 $$  __$$\ $$  __$$\ \_$$  _|\__$$  __|      $$  __$$\ $$  __$$\ $$ |   $$ |       $$  __$$\ $$  __$$\\$$\   $$  |$$  __$$\\__$$  __|$$  _____|
 $$ /  $$ |$$ /  \__|  $$ |     $$ |         $$ |  $$ |$$ /  $$ |$$ |   $$ |       $$ /  \__|$$ /  $$ |\$$\ $$  / $$ /  $$ |  $$ |   $$ |      
 $$$$$$$$ |$$ |$$$$\   $$ |     $$ |         $$$$$$$  |$$ |  $$ |\$$\  $$  |       $$ |      $$ |  $$ | \$$$$  /  $$ |  $$ |  $$ |   $$$$$\    
 $$  __$$ |$$ |\_$$ |  $$ |     $$ |         $$  ____/ $$ |  $$ | \$$\$$  /        $$ |      $$ |  $$ |  \$$  /   $$ |  $$ |  $$ |   $$  __|   
 $$ |  $$ |$$ |  $$ |  $$ |     $$ |         $$ |      $$ |  $$ |  \$$$  /         $$ |  $$\ $$ |  $$ |   $$ |    $$ |  $$ |  $$ |   $$ |      
 $$ |  $$ |\$$$$$$  |$$$$$$\    $$ |         $$ |$$\    $$$$$$  |$$\\$  /$$\       \$$$$$$  | $$$$$$  |   $$ |     $$$$$$  |  $$ |   $$$$$$$$\ 
 \__|  \__| \______/ \______|   \__|         \__|\__|   \______/ \__|\_/ \__|       \______/  \______/    \__|     \______/   \__|   \________|
 
 */


/* PASTE YOUR GRAPHICS ARRAY CODE BELOW
 ===============================*/
#define POVARRAYSIZE 200
int povArray[] = { 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 0 , 4089 , 4089 , 3225 , 3225 , 2033 , 1905 , 1 , 1 , 25 , 121 , 481 , 1889 , 4065 , 505 , 25 , 1 , 1 , 4081 , 4089 , 1049 , 1561 , 825 , 1009 , 481 , 0 , 0 , 0 , 0 , 3072 , 3073 , 3073 , 4089 , 4089 , 3073 , 3073 , 3073 , 1 , 4089 , 4089 , 3169 , 3697 , 2009 , 921 , 1 , 3097 , 3097 , 4089 , 4089 , 3097 , 3097 , 1 , 4089 , 4089 , 3265 , 4033 , 1920 , 0 , 0 , 0 , 1 , 57 , 505 , 4033 , 4033 , 505 , 121 , 993 , 3969 , 4089 , 121 , 1 , 1 , 25 , 121 , 481 , 1889 , 4065 , 505 , 25 , 1 , 1 , 4089 , 4089 , 3169 , 3697 , 2009 , 921 , 1 , 481 , 2033 , 1593 , 3097 , 3097 , 3097 , 3121 , 2033 , 961 , 1 , 241 , 1017 , 1817 , 3609 , 3097 , 3121 , 3633 , 0 , 0 , 0 , 0 , 0 , 0 , 0};


  // SETUP
  // ====================================
void setup() {                


  // SETUP THE POV
  // ===============================
  // Setup the POV.
  povSetup(); 
  
  // Optionally change the column width (default of 6).
  povSetWidth(6); 
  
  // Assign the graphics array to the POV.
  povSetArray(povArray,POVARRAYSIZE); 

  // Display a fade-out animation.
  povFadeOutAnimation(); 
  
  // Turn off all the LEDs.
  povTurnOffAllLeds(); 

  
}


  // MAIN LOOP
  // ====================================
void loop() {
  
  // DISPLAY THE GRAPHICS
  // ===============================
  // If set to false, the POV will display the graphics CONTINUOUSLY.
  
  // If set to true, the POV will display the graphics ONLY if the 
  // BUTTON or HALL are triggered.
  
  povDisplay(true);  

}
