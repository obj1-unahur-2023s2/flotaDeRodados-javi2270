import rodados.*
class Dependencia {
	var property cantEmpleado = 0
	const rodados = []
	
	method agregarAFlota(rodado){
		rodados.add(rodado)
	}
	
	method quitarDeFlota(rodado){
		rodados.remove(rodado)
	}
	
	method pesoTotalFlota(){
		return rodados.sum({rodado => rodado.peso()})
	}	
	
	method todosSuperanXVelocidad(velocidad){
		return rodados.all({r => r.velocidad() >= velocidad})
	}
	
	method estaBienEquipada(){
		return rodados.size() >= 3 and self.todosSuperanXVelocidad(100)
	}
	
	method capacidadTotalEnColor(color){
		return self.rodadosDeUnColor(color).sum({r=>r.capacidad()})
	}
	
	method rodadosDeUnColor(color) {
		return rodados.filter({r => r.color() == color})
	}
	
	method colorDelRodadoMasRapido(){
		return self.rodadoMasRapido().color()
	}
	
	method rodadoMasRapido() {
		if (rodados.isEmpty())
			self.error('no se puede calcular el maximo')
		return rodados.max({r=>r.velocidad()})
	}

	
	method capacidadDeLaFlota(){
		return rodados.sum({r=>r.capacidad()})
	}
	
	method capacidadFaltante(){
		return 0.max(cantEmpleado - self.capacidadDeLaFlota())
	}
	
	method esGrande() {
		return cantEmpleado >= 40 and rodados.size() >= 5
	}
	
}







