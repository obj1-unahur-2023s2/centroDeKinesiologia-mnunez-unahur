class Aparato {	
	var property color = "blanco"
	
	method usar(paciente) {
		if(!self.puedeSerUsadoPor(paciente)) {
			self.error("este aparato no puede ser utilizado por el paciente")
		}
		self.disminuirDolorAlPaciente(paciente)
		self.fortalecerPaciente(paciente)
	}
	method disminuirDolorAlPaciente(paciente)
	method fortalecerPaciente(paciente)
	method puedeSerUsadoPor(paciente)
	
	
	
}

class Magneto inherits Aparato {
	override method disminuirDolorAlPaciente(paciente) {
		paciente.disminuirDolor(paciente.nivelDolor() * 0.1)
	}
	
	override method fortalecerPaciente(paciente) { }
	
	override method puedeSerUsadoPor(paciente) = true
}

class Bicicleta inherits Aparato {
	
	override method disminuirDolorAlPaciente(paciente) {
		paciente.disminuirDolor(4)
	}
	override method fortalecerPaciente(paciente) {
		paciente.aumentarFortaleza(3)
	}
	override method puedeSerUsadoPor(paciente) = paciente.edad() > 8
	
}

class Minitramp inherits Aparato {
	override method disminuirDolorAlPaciente(paciente) { }
	
	override method fortalecerPaciente(paciente) {
		paciente.aumentarFortaleza(paciente.edad() * 0.1)
	}
	override method puedeSerUsadoPor(paciente) = paciente.nivelDolor() < 20
	
}

