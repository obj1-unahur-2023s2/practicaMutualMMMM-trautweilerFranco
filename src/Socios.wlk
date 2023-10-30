import Viajes.*
class Socios {
	
	const property actividades = #{}
	const property idiomas = #{}
	const  maximoDeActividades
	const property edad
	
	method agregarActividades(unaActividad) = actividades.add(unaActividad)
	
	method esAdoradorDelSol() = actividades.all({p => p.broncearse()})
	
	method esforzado() = actividades.filter({p => p.implicaEsfuerzo()})
	
	method realizarActividad(unaActividad) { 
		return if(actividades.size() < maximoDeActividades){
			self.agregarActividades(unaActividad)
		} else {
			self.error("el socio alcanzo el maximo de actividades")
		}
	}
}
class SocioTranquilo inherits Socios{

    method leAtraeActividad(unaActividad) = unaActividad.cantDiasDeActividad() >= 4
}

class SocioCoherente inherits Socios{

    method leAtraeActividad(unaActividad) = (self.esAdoradorDelSol() and unaActividad.broncearse()) or unaActividad.implicaEsfuerzo()
}

class SocioRelajado inherits Socios{

    method leAtraeActividad(unaActividad) = not idiomas.intersection(unaActividad.idiomas()).isEmpty()
}
	
