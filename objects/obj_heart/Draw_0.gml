draw_self()
paddleX = obj_longbone.x
paddleWidth = obj_longbone.sprite_width
if(x + dx > room_width-ballRadius || x + dx < ballRadius) {
	dx = -dx;
}

if(y + dy < ballRadius) {
	audio_play_sound(mus_fall, 30, 0)
	dy = -dy;
}else if(y + dy > room_height-ballRadius-paddleHeight-20) {
	if(x > paddleX && x < paddleX + paddleWidth) {
		dy = -dy;
		dy *= 1.01
		dx *= 1.01
		points += 1
	}else {
		room_goto(room_over)
	}
}

x += dx;
y += dy;
if (self.points >= 45) room_goto(room_won)