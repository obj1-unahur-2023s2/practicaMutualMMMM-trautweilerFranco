
class Actividades {
	const property idiomas = new Set()
	
	method diasViajes()
	method implicaEsfuerzo()
	method broncearse()
	method esInteresante()
	method esRecomendadaParaSocio(unSocio) = self.esInteresante() and unSocio.leAtraeActividad(self) and not unSocio.actividades().contains(self)
	method cantDiasDeActividad() = pandemia.diasDeCuarentena()
}

class Playa inherits Actividades{
	
	const largo
	
	override method diasViajes() = largo / 500
	
	override method implicaEsfuerzo() = largo > 1200
	
	override method broncearse() = true
	
	override method esInteresante() = idiomas.size() > 1
}

class Excursion inherits Actividades{
	
	const  atracciones
	
	override method diasViajes() = atracciones / 2
	
	override method implicaEsfuerzo() = atracciones.between(5,8)
	
	override method broncearse() = false
	
	override method esInteresante() = super() or atracciones == 5
}

class Tropical inherits Excursion {
	
	override method diasViajes() = super() + 1
	
	override method broncearse() = true
	
	override method esInteresante() = idiomas.size() > 1
}

class Trekking inherits Actividades{
	
	const  kilometros
	const  diasSol
	
	override method diasViajes() = kilometros / 50
	
	override method implicaEsfuerzo() = kilometros > 80
	
	override method broncearse() = diasSol > 200 or (diasSol.between(100, 200) and kilometros > 120)
	
	override method esInteresante() = super() and diasSol > 140
}

class Gimnasia {

    method idiomas() = #{"español"}
    method implicaEsfuerzo() = true
    method sirveParaBroncear() = false
    method cantDiasDeActividad() = 1
    method esRecomendadaParaSocio(unSocio) = unSocio.edad().between(20,30)
}

class TallerLiterario{
    const librosEnQueTrabaja = #{}

	method idiomas() = librosEnQueTrabaja.map({l => l.idioma()}).asSet()
    method cantDiasDeActividad() = librosEnQueTrabaja.size() + 1
    method tieneLibroConMasDe500Pag() = librosEnQueTrabaja.any({l => l.cantPaginas() > 500})
    method autoresDeLibros() = librosEnQueTrabaja.map({l => l.nombreDelAutor()}).asSet()
    method todosLosLibrosSonDelMismoAutor() = self.autoresDeLibros().size() == 1
    method hayMasDeUnLibro() = librosEnQueTrabaja.size() > 1
    method implicaEsfuerzo() = self.tieneLibroConMasDe500Pag() or (self.todosLosLibrosSonDelMismoAutor() and self.hayMasDeUnLibro())
    method sirveParaBroncear() = false
    method esRecomendadaParaSocio(unSocio) = unSocio.idiomas().size() > 1
}

class Libro{
    const property idioma
    const property cantPaginas
    const property nombreDelAutor
}

// para terminar de comprender en que casos usamos un objeto que puede modificar 
// comportamiento o mensajes de todas las instancias de una clase, suponemos que al modelo de Viajes
// se agrega una complejidad más que hace que a todos los tipos de viaje se le sume una cantidad de días
// configurable cuando se declara pandemia, como dias de cuarentena. Este valor debe afectar a todos los viajes
// por igual y es configurable para una pandemia.

object pandemia {
	var property diasDeCuarentena = 0
}




