/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if keyboard_check(vk_up){
	y-=1
}

if keyboard_check(vk_down){
	y+=1
}

if keyboard_check(vk_left){
	x-=1 image_xscale=-1
}

if keyboard_check(vk_right){
	x+=1 image_xscale=1
}
if keyboard_check(ord("D")){
	x+=1
}

if keyboard_check(ord("A")){
	x-=1
}

if keyboard_check(ord("W")){
	y-=1
}

if keyboard_check(ord("S")){
	y+=1
}

if sorvete=3{
	room_goto_next()	
}

if keyboard_check(vk_anykey){
 sprite_index=DoxcinhoCorre
}else{
	sprite_index=DOXCINHO
}