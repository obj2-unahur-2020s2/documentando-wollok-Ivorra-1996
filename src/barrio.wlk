class Barrio {
        // Instanceo una lista vacia con el const property que es un getter y un setter a la vez.
	const property elementos = []
	
       // recibe por parameto un elemento, es un tipo de objeto.
       // metodo o comportamiento que la funcion es  agregar elementos a una lista y no devuelve nada "Void".
	method agregarElemento(elemento) {
		elementos.add(elemento)
	}
	
	//Este metodo tambien recien un elemento de tipo objeto , que hace algo(remover un elemento de la lista) y no devuelva nada.
	method sacarElemento(elemento) {
		elementos.remove(elemento)
	}
	
	//Este metodo devuelve algo,el tipo de dato que devuelve es un entero ,en este caso es la cantidad total que cumple una "condicion" dentro de una lista(elementos).
	//la condicion es si son buenos.
	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	}
	
	//Hace los mismo que el metodo anterior pero en  este caso la condicion cambia y los tipos de datos son los mismos.
	// la condicion no es bueno.
	method elementosMalos() = elementos.count{ e => not e.esBueno() }
	
	//Este metodo devuelve un tipo de dato booleano(True o False).
	//la condicion compara la cantidad de elementos buenos mayor a elementos malos.
	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}

}

