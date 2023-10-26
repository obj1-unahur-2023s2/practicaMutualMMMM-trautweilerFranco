class Socios {
	
	const actividades = []
	const property maximoDeActividades
	
	method agregarActividades(listaDeActividades) = actividades.addAll(listaDeActividades)
	
	method esAdoradorDelSol() = actividades.all({p => p.broncearse()})
	
	method esforzado() = actividades.all({p => p.implicaEsfuerzo()})
		
}
