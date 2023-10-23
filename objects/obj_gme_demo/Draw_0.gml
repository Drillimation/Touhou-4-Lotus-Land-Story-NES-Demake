/// Draw info
draw_set_color(c_white);

draw_text(10,10,"Name: " + string(name));
draw_text(10,25,"Author: " + string(author));
draw_text(10,40,"Comment: " + string(comment));
draw_text(10,55,"Copyright: " + string(copyright));

draw_text(10,70,"Tempo: " + string(tempo));
draw_text(10,85,"Track: " + string(track_number+1) + "/" +string(song_tracks));
draw_text(10,100,"Voices: " + string(song_voices));

var channels = "Playing voices: ";
for(var i=0; i<8; i++) {
  channels += string(!mute[i]) + " ";
}
draw_text(10, 115, channels);

draw_text(10, 130, "FPS: " + string(fps) + "/" + string(fps_real));
