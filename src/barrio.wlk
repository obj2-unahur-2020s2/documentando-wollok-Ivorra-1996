class Barrio {
        // Instanceo una lista vacia con el const property que es un getter y un setter a la vez.
	const property elementos = []
       // recibe por parameto un elemento, es un tipo de objeto 
       // metodo o comportamiento que la funcion es  agregar elementos a una lista.
	method agregarElemento(elemento) {
		elementos.add(elemento)
	}

	method sacarElemento(elemento) {
		elementos.remove(elemento)
	}

	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	}

	method elementosMalos() = elementos.count{ e => not e.esBueno() }

	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}

}

