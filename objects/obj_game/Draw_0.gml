// draw_text(50, 20, "Score:" + string(score))
// draw_text(40, 40, "Lives:" + string(lives))
// draw_set_font(fnt_text);

switch (room) {
case rm_game: 
draw_text(40, 20, "Score:" + string(score));
draw_text(30, 40, "Lives:" + string(lives));
break;

case rm_start:
var c = c_yellow;
draw_text_transformed_color(room_width/2, 150, "SPACE ROCKS", 3, 3, 0, c, c, c, c, 1);
draw_text(room_width/2, 250, @"Score 1,000 points to win you Idiot!
UP: Move
LEFT/RIGHT: Change direction
SPACE: Shoot

>>PRESS ENTER TO START<<"); 
draw_set_halign(fa_middle); 
break;

case rm_win:
draw_set_halign(fa_middle);
var c = c_green;
draw_text_transformed_color(room_width/2, 100, "GUESS YOU WON IDIOT", 2, 2, 0, c, c, c, c, 1);
draw_text(room_width/2, 300, "IF YOU WANNA TRY AGAIN, PRESS ENTER");
draw_set_halign(fa_middle);
break;

case rm_gameover:
draw_set_halign(fa_center);
var c = c_red
draw_text_transformed_color(room_width/2, 150, "HAHA, YOU FAILED HAHA", 2, 2, 0, c, c, c, c, 1);
draw_text(room_width/2, 250, "FINAL SCORE:" + string(score));
draw_text(room_width/2, 300, @"YOU WANNA TRY AGAIN? YOU'LL FAIL WITHOUT A DOUBT
Press Enter if Your Feeling it Again");
draw_set_halign(fa_middle);
break;
}