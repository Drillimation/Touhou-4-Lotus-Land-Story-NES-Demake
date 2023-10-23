/// @description Insert description here
// You can write your code in this editor
if destroy_action == true {
	if destroy_script == scr_create_boss {
		script_execute(destroy_script,arg1,arg2,arg3,arg4)
	}
	if destroy_script == scr_create_boss_ext {
		script_execute(destroy_script,arg1,arg2,arg3)
	}
	if destroy_script == scr_stage_clear {
		script_execute(destroy_script);
	}
}