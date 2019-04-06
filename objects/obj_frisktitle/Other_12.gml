audio_stop_all()
if(room == room_initscreen){
	audio_play_sound(mus_papyrus, 60, 1)
	room_goto(room_breakout)
}else {
	game_restart();
}