// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_shoot_speed(){
	j += 1
	j = j mod 6
	if (j == 0) {
		if obj_player.focusmode == true {
			nrm = 2.5
			sm_nrm = 1.25
			aux_tur[0] = -4
			aux_tur[1] = -8
			aux_tur[2] = 4
		}
		else {
			nrm = 5
			sm_nrm = 2.5
			aux_tur[0] = -16
			aux_tur[1] = 0
			aux_tur[2] = 16
		}
		twist = floor(global.pow / 25)
		switch(global.character) {
			case "REIMU":
				for (var i = 0; i < (floor(global.pow / 25) + 1); i += 1) {
						scr_shoot_bullet_player(4,(90 + (twist * sm_nrm)) - (i * nrm),spr_bullet_reimu,0,0,0,false,snd_fire);
				}
				break;
			case "MARISA":
				for (var i = 0; i < (floor(global.pow / 25) + 1); i += 1) {
						scr_shoot_bullet_player(4,(90 + (twist * sm_nrm)) - (i * nrm),spr_bullet_marisa,0,0,0,false,snd_fire);
				}
				break;
		}
	}
	switch(global.character) {
		case "REIMU":
			switch(global.weapontype) {
				case 0:
					aux_speed = 6;
					aux = spr_bullet_aux1
					do_aim = true
					amt = 0;
					break;
				case 1:
					aux_speed = 12;
					aux = spr_bullet_aux2
					do_aim = false
					amt = floor(global.pow / 50);
					break;
			}
			break;
		case "MARISA":
			switch(global.weapontype) {
				case 0:
					aux_speed = 18;
					aux = spr_bullet_aux3
					do_aim = false
					amt = floor(global.pow / 50);
					break;
				case 1:
					aux_speed = 24;
					aux = spr_bullet_aux4
					do_aim = false
					amt = 0;
					break;
			}
			break;
	}
	k += 1
	k = k mod aux_speed
	if (k == 0) {
		if global.pow >= 12 {
			//twist2 = floor(global.pow / 50)
			for (var i = 0; i < (amt + 1); i += 1) {
				scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[0],aux_tur[1],do_aim,snd_fire);
				scr_shoot_bullet_player(4,(90 + (amt * 2.5)) - (i * 5),aux,0,aux_tur[2],aux_tur[1],do_aim,snd_fire);
			}
		}
	}
}