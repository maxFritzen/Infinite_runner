///scr_Init();

// This script is called from our Init room creation code 
// which you can find in the room editor "Settings" tab.
// It simply initialises our global variables for use.

// Note that the init room also sets the size for the 
// application surface and window display.

//draw_set_color(c_white);

// Set the sprite fonts we need
/*
global.Font = font_add_sprite_ext(spr_Font, "0123456789", false, 1);
global.Font_Score = font_add_sprite_ext(spr_Font_Score, "0123456789", false, 1); */

// Set the various global vars to control the game state
/*
global.scoreupdated = false;        // Tells the game that the highscore needs updated
global.gamestarted = false;         // This is to control the showing of the instructions
global.gameended = false;           // This will control the restarting after the player loses
global.pause = false;               // Will be used to pause the game. */

// Set the window scale for devices/windows/HTML5
scr_SetRes();

// NOTE!!!! you should create your own scaling solution for the game to suit your needs!
// The supplied scripts will work fine for most targets but if you are changing anything 
// in the, I recommend that you tweak the scripts to suit.

// Also note that the Global Game Settings should be set to PORTRAIT only for mobile 
// devices, and you should probably set the interpolation to OFF too. Also set the 
// scaling options to FULL SCALE otherwise the solution given in the above script may 
// not work correctly.
