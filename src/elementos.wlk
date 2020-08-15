class Hogar {

	var property nivelMugre //tipo de dato numero
	var property confort //tipo de dato numero

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos. 
	method esBueno() = nivelMugre <= confort / 2 //devuelve un valor en este caso booleano

	method fueAtacado(plaga) { //realiza accion, recibe por parametro(cucaracha,mosquito,pulgas, y garrapatas)
		nivelMugre += plaga.nivelDanio()
	}

}

class Mascota {

	var property nivelSalud //tipo de dato numero

	method fueAtacado(plaga) { //realiza accion, recibe por parametro(cucaracha,mosquito,pulgas, y garrapatas)
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}
	}

	method esBueno() = nivelSalud > 250

}

class Huerta {

	var property capacidadProduccion //tipo de dato numero

	method esBueno() { // devuelve un valor booleano
		return capacidadProduccion > INTA.produccionMinima()
	}

	method fueAtacado(plaga) { // realiza accion, recibe por parametro(cucaracha,mosquito,pulgas, y garrapatas)
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10
		}
	}

}

object INTA {

	var property produccionMinima  //tipo de dato numero

}

