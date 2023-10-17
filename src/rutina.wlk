class Rutina {
	const aparatos = []
	
	method cantidadAparatos() = aparatos.size()
	
	method agregarAparato(aparato) {
		aparatos.add(aparato)
	}
	
	method puedeSerRealizadaPor(paciente) {
		return aparatos.all({ a => a.puedeSerUsadoPor(paciente)})
	}
	
	method ejecutar(paciente) {
		aparatos.forEach({a => a.usar(paciente)})
	}
	
	method tieneAlgunAparatoColor(color) {
		return aparatos.any({ a => a.color() == color})
	}
		
}
