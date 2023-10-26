
class Actividades {
	const idiomasAct = #{}
	
	method idiomas() = idiomasAct
	
	method agregarIdioma(unIdioma) = idiomasAct.add(unIdioma)
	
	method diasViajes()
	method implicaEsfuerzo()
	method broncearse()
	method esInteresante()
	
}

class Playa inherits Actividades{
	
	const largo
	
	override method diasViajes() = largo / 500
	
	override method implicaEsfuerzo() = largo > 1200
	
	override method broncearse() = true
	
	override method esInteresante() = idiomasAct.size() > 1
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
	
	override method esInteresante() = idiomasAct.size() > 1
}

class Trekking inherits Actividades{
	
	const  kilometros
	const  diasSol
	
	override method diasViajes() = kilometros / 50
	
	override method implicaEsfuerzo() = kilometros > 80
	
	override method broncearse() = diasSol > 200 or (diasSol.between(100, 200) and kilometros > 120)
	
	override method esInteresante() = super() and diasSol > 140
}

class Gimnasia inherits Actividades{
	override method agregarIdioma(unIdioma) = idiomasAct.add("espaniol")	
	override method diasViajes() = 1
	override method implicaEsfuerzo() = true
	override method broncearse() = false
	override method esInteresante(){}
}




