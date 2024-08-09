/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if place_meeting(x,y,ParedeInimigo){
	if direc == 0{
		direc = 1;
	}else if direc == 1{
		direc = 0;
	}
}

if direc == 0{
	image_xscale =1
	x += spd;
}else if direc == 1{
	image_xscale =-1
	x -= spd;
}