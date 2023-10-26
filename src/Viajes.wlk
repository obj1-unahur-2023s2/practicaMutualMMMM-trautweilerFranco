
class Viajes {
	const idiomas = #{}
	
	method agregarIdioma(unIdioma) = idiomas.add(unIdioma)
	
	method diasViajes()
	method implicaEsfuerzo()
	method broncearse()
	method esInteresante()
	
}

class Playa inherits Viajes{
	
	const largo
	
	override method diasViajes() = largo / 500
	
	override method implicaEsfuerzo() = largo > 1200
	
	override method broncearse() = true
	
	override method esInteresante() = idiomas.size() > 1
}

class Excursion inherits Viajes{
	
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

class Trekking inherits Viajes{
	
	const  kilometros
	const  diasSol
	
	override method diasViajes() = kilometros / 50
	
	override method implicaEsfuerzo() = kilometros > 80
	
	override method broncearse() = diasSol > 200 or (diasSol.between(100, 200) and kilometros > 120)
	
	override method esInteresante() = super() and diasSol > 140
}

class Gimnasia inherits Viajes{
	override method agregarIdioma(unIdioma) = idiomas.add("español")	
	override method diasViajes() = 1
	override method implicaEsfuerzo() = true
	override method broncearse() = false
}




