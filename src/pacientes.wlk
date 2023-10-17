import rutina.*

class Paciente {
	var property edad	
	var nivelFortaleza
	var nivelDolor
	var rutina 
	
	
	method 	nivelFortaleza() =nivelFortaleza
	method 	nivelDolor() =nivelDolor

	method usarAparato(aparato) {
		aparato.usar(self)
	}
	
	method disminuirDolor(valor) {
		nivelDolor = 0.max(nivelDolor - valor)
	}
	
	method aumentarFortaleza(valor) {
		nivelFortaleza += valor
	}
	
	method hacerRutina() {
		rutina.ejecutar(self)
	}
	
	method puedeHacerRutina() = rutina.puedeSerRealizadaPor(self)
		
}


class Resistente inherits Paciente {
	override method hacerRutina() {
		super()
		self.aumentarFortaleza(rutina.cantidadAparatos())
	}	
	
}

class Caprichoso inherits Paciente {
	override method puedeHacerRutina() {
		return super() && rutina.tieneAlgunAparatoColor("rojo")
	}
	
	override method hacerRutina() {
		super()
		super()
	}	
	
}

class RapidaRecuperacion inherits Paciente {
	override method hacerRutina() {
		super()
		self.disminuirDolor(nivelRecuperacion.valor())
	}	
}

object nivelRecuperacion {
	var property valor = 3
}

