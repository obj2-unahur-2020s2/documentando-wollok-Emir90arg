class Barrio {

	const property elementos = [] //elementos es de tipo lista y contiene objetos 

	method agregarElemento(elemento) {//accion, recibe objetos como parametro (hogar, mascota ,huerta e INTA)
		elementos.add(elemento)
	}

	method sacarElemento(elemento) {//accion, recibe objetos como parametro (hogar, mascota ,huerta e INTA)
		elementos.remove(elemento)
	}

	method elementosBuenos() {//devuelve una lista de elementos
		return elementos.count{ e => e.esBueno() }
	}

	method elementosMalos() = elementos.count{ e => not e.esBueno() }//devuelve una lista de elementos

	method esCopado() {//devuelve un booleano
		return self.elementosBuenos() > self.elementosMalos()
	}

}
