import Viajes.*
class Socios {
	
	const actividades = []
	const idiomas = #{}
	const property maximoDeActividades
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
	method esTranquilo() = actividades.any({ p => p.diasViajes() > 4})
	
	method esCoherente(){
		return if(self.esAdoradorDelSol()){
			actividades.all({p => p.broncearse()})
		} else {
			actividades.all({p => p.implicaEsfuerzo()})
		}
	}
	method esRelajado() = idiomas.intersection(actividades.idiomas()).size()>=1
	
}
