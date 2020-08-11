// Creo una clase.
class Plaga {
	// instaceo la varible poblacion tipo entero.
	var property poblacion
	
	// Este metodo hace algo devuelve un tipo de dato booleano.
	// condicion poblacion mayor o igual 10.
	method transmiteEnfermedad() = poblacion >= 10
	
	// Recibe elemento tipo objeto(Huerta,Casa),no devuelve nada.Hace una asignacion a poblacion de tipo entero,multiplicado 1.1 .
	// Luego llama al metodo fueAtacado.
	method atacar(elemento){
		poblacion *= 1.1
		elemento.fueAtacado(self)
	}
}
// Creo una clase.
class PlagaCucaracha inherits Plaga {

	// instanceo peroPromedio tipo de dato entero
	var property pesoPromedio
	
	// retorna el resultado de poblacion tipo entero, diviendolo por 2.
	method nivelDanio() {
		return poblacion / 2
	}
	
	// Este metodo hace lo mismo que hace lo que hereda de la clase madre, mas lo del pesoPromedio que es un tipo de dato entero mayor o igual 10.Devuelve un booleano.
	override method transmiteEnfermedad() {
		return super() and pesoPromedio >= 10
	}
	
	// Recibe un elemento de tipo objeto, pero no devuelve nada.Hace algo ,le pasa un elemento por parametro a lo que heredo de la clase madre el "atacar" , luego 
	//hace una asignacion a "peroPromedio" tipo de dato entero , sumandole 2.
	override method atacar(elemento) {
		super(elemento)
		pesoPromedio += 2
	}

}
// Creo una clase.
class PlagaMosquito inherits Plaga {

	// Este metodo solo retorna el nivel de poblacion (tipo Entero).
	method nivelDanio() {
		return poblacion
	}
	
	// metodo devuelve un booleano.
	override method transmiteEnfermedad() {
		return super() and poblacion % 3 == 0
	}

}
//Creo una clase.
class PlagaPulgas inherits Plaga {
	
	//Devuelve un tipo de dato entero , multiplicacion la poblacion de tipo entero tambien multiplicado por 2.
	method nivelDanio() = poblacion * 2

}
// Creo una clase.
class PlagaGarrapatas inherits PlagaPulgas {

	//Metodo que recibe por parameto un elemento de tipo de objeto,hace algo pero no devuelve nada.
	// hace una asignacion con la multiplicacion con tipos de datos enteros.
	//Luego elemento pasado por parametro llama al metodo fueAtacado.
	override method atacar(elemento) {
		poblacion *= 1.2
		elemento.fueAtacado(self)
	}

}

