
class ChevroletCorsa {
	var property color
	
	method capacidad() = 4
	method velocidadMaxima() = 150
	method peso() = 1300
}

class RenaultKwid {
	var property tanqueAdicional = false 
	
	method capacidad() = if(tanqueAdicional){3}else{4}
	method velocidadMaxima() = if(tanqueAdicional){110}else{120}
	method peso() = if(tanqueAdicional){1350}else{1200}
	method color() = 'azul'
}
object trafic {
	var property interior
	var property motor
	
	method capacidad() = interior.capacidad()
	method velocidad() = motor.velocidad()
	method peso() = 4000 + motor.peso() + interior.peso()
	method color() = 'blanco'
}

object motorBataton{
	method peso() = 500
	method velocidad() = 80
}

object motorPulenta{
	method peso() = 800
	method velocidad() = 130
}

object interiorComodo {
	method capacidad() = 5
	method peso() = 700
}

object interiorPopular {
	method capacidad() = 12
	method peso() = 1000
}

class AutosEspeciales {
	var property capacidad
	var property velocidad
	var property peso
	var property color
}



