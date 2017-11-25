///scr_SetRes();

// This script sets the initial room resolution for the device, browser or monitor.
// Basically it gets the aspect ratio of the display or window then sets the view 
// width and height accordingly. Since the game is low res, this is then scaled by 
// to give a better user experience.

// NOTE!!! This is NOT optimised for the Windows8 target module. For that you will 
// need to adapt it yourself.

// First check to see if we are on HTML5 or not
if (os_browser == browser_not_a_browser)
{
// Not Html5, so what?
switch(os_type)
    {
    // Desktop
    case os_windows:
    case os_macosx:
    case os_linux:
        aspect = window_get_height() / window_get_width();
        if aspect < 144 / 256
            {
            VIEW_HEIGHT = 256;
            VIEW_WIDTH = 256 / aspect;
            }
        else
            {
            VIEW_HEIGHT = 144 * aspect;
            VIEW_WIDTH = 144;
            }
        window_set_size(VIEW_WIDTH * 3, VIEW_HEIGHT * 3);
        window_center();
        surface_resize(application_surface, window_get_width(), window_get_height());
    break;
    // Mobile
    default:
        aspect = display_get_height() / display_get_width();
        if aspect < 144 / 256
            {
            VIEW_HEIGHT = 256;
            VIEW_WIDTH = 256 / aspect;
            }
        else
            {
            VIEW_HEIGHT = 144 * aspect;
            VIEW_WIDTH = 144;
            }
        surface_resize(application_surface, display_get_width(), display_get_height());
    break;
    }
}
else
{
// HTML5 (or JS) target
VIEW_HEIGHT = 256;
VIEW_WIDTH = 144;
window_set_size(VIEW_WIDTH * 3, VIEW_HEIGHT * 3);
window_center();
surface_resize(application_surface, window_get_width(), window_get_height());
}

// Set the views in the rooms

var i;
i=true;
rm=room_next(room)


while (i = true)
{
room_set_view(rm, 0, true,(144 - VIEW_WIDTH) div 2, (256 - VIEW_HEIGHT) div 2, VIEW_WIDTH, VIEW_HEIGHT, 0, 0, VIEW_WIDTH, VIEW_HEIGHT, 0, 0, -1, -1, -1);
room_set_view_enabled(rm,true);
if rm = room_last
    {
    i = false;
    }
else
    {
    rprev = rm;
    rm = room_next(rprev);
    }
}

// Lock orientation. This should also be set in the Global game Settings for the target
os_lock_orientation(true);

