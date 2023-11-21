// constructor template for weapons

function create_weapon(_sprite = spr_mint_staff, _weapon_length = 0, _bullet_obj = obj_mint_bullet, _cooldown = 1, _bullet_num = 1, _spread = 0) constructor {
	sprite = _sprite;
	weapon_length = _weapon_length;
	bullet_obj = _bullet_obj;
	cooldown = _cooldown
	bullet_num = _bullet_num;
	spread = _spread;
}

// weapon inventory
global.player_weapons = array_create(0);

// weapons
global.weapon_list = {

	mint_staff : new create_weapon(
		spr_mint_staff,
		sprite_get_bbox_right(spr_mint_staff) - sprite_get_xoffset(spr_mint_staff),
		obj_mint_bullet,
		9
	),
	
	red_staff : new create_weapon(
		spr_red_staff,
		sprite_get_bbox_right(spr_red_staff) - sprite_get_xoffset(spr_red_staff),
		obj_fireball,
		50
	),
	
	purple_staff : new create_weapon (
		spr_purple_staff,
		sprite_get_bbox_right(spr_purple_staff) - sprite_get_xoffset(spr_purple_staff),
		obj_shadow_slash,
		20,
	),
	
	light_staff : new create_weapon (
		spr_light_staff,
		sprite_get_bbox_right(spr_light_staff) - sprite_get_xoffset(spr_light_staff),
		obj_light_ball,
		20,
		40,
		360
	),

}

array_push(global.player_weapons, global.weapon_list.mint_staff);
array_push(global.player_weapons, global.weapon_list.red_staff);
array_push(global.player_weapons, global.weapon_list.purple_staff);
array_push(global.player_weapons, global.weapon_list.light_staff);
	
	
