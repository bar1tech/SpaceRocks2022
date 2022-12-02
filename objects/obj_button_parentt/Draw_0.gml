/// @description 

// make sure button itself is drawn in all children
draw_self();

// set the font for all children
draw_set_font(fnt_menu);

// set the alignment for all children
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// button_text is different for each child
// See "Variable Definitions" for each child
draw_text(x,y,button_text);

// reset the alignment for all children
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// reset font to default font for all children
// not included in this example