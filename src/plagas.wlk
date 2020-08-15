class Plaga {
	var property poblacion //tipo de dato numero
	
	method transmiteEnfermedad() = poblacion >= 10 //devuelve un booleano
	
	method atacar(elemento){ //accion, recibe objetos como parametro (hogar, mascota ,huerta e INTA)
		poblacion *= 1.1
		elemento.fueAtacado(self)
	}
}

class PlagaCucaracha inherits Plaga { 

	var property pesoPromedio //tipo de dato numero

	method nivelDanio() { // devuelve un numero 
		return poblacion / 2
	}

	override method transmiteEnfermedad() { // devuelve un booleano
		return super() and pesoPromedio >= 10
	}

	override method atacar(elemento) { //accion, recibe objetos como parametro (hogar, mascota ,huerta e INTA)
		super(elemento)
		pesoPromedio += 2
	}

}

class PlagaMosquito inherits Plaga {

	method nivelDanio() { //devuelve un numero 
		return poblacion
	}

	override method transmiteEnfermedad() { //devuelve un booleano
		return super() and poblacion % 3 == 0
	}

}

class PlagaPulgas inherits Plaga {

	method nivelDanio() = poblacion * 2  // devuelve un numero

}

class PlagaGarrapatas inherits PlagaPulgas {

	override method atacar(elemento) { //accion, recibe objetos como parametro (hogar, mascota ,huerta e INTA)
		poblacion *= 1.2
		elemento.fueAtado(self)
	}

}
