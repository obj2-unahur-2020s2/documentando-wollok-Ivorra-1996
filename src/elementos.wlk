class Hogar {
	//Instaciamos unas variables con el setter y getter,el tipo de dato es entero.
	var property nivelMugre
	var property confort

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos.
	//Este metodo devuelve un tipo de dato boolenao , aunque tengo mis dudas porque no tiene el return D:.(lo debatimos con mariano y santi xD)
	// la condicion pregunta si es menor o igual.
	method esBueno() = nivelMugre <= confort / 2
	
	//Recibe por parametro objeto tipo plaga(Mosquito,Cucaracha,Garrapa,Pulgas),este metodo no duelve nada hace una asignaccion a una variable "nivelMugre" de 
	tipo de dato entero(Suma con un tipo de dato entero que devuel el metodo "nivelDanio").
	method fueAtacado(plaga) {
		nivelMugre += plaga.nivelDanio()
	}

}

class Mascota {
	//Tipo de dato entero.
	//setter
	var property nivelSalud
	//Este metodo recibe un objeto tipo plaga,luego verifica una condicion si tranmiste enfermdad o no,de tipo de dato Booleano,si devuelvue True,hace algo,
	//hace una asinacion a la varaible "nivelSalud" que lo resta, los tipos de datos son enteros tanto en la variable como el metodo  "nivelDanio()".
	method fueAtacado(plaga) {
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}
	}
	//Este meto devuel un tipo de dato boolenao.
	// la condicion es el nivel de salud mayor a 250.
	method esBueno() = nivelSalud > 250

}

class Huerta {
	//Es un tipo de dato float o entero depende que valor tenga.
	var property capacidadProduccion
	
	//Devuelve un tipo de dato booleano.
	//condicion si la capacidad de produccion es mayor a produccion minima.
	method esBueno() {
		return capacidadProduccion > INTA.produccionMinima()
	}
	
	// Este metodo recibe por parametro un tipo de objeto plaga,Este metodo hace algo pero no devuelve nada.
	// Hace una asigancion a una variable de tipo entero que resta con otro tipo de dato entero que devuelve el metodo "nivelDanio" multiplicado por "0.1".
	// Luego consulta a la condicion si tramiste enfermdad o no , si se cumple,resta la capidad de produccion que es un tipo de dato entero.
	method fueAtacado(plaga) {
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10
		}
	}

}

object INTA {
	// Instaceo una variable produccion minimina de tipo entero.
	var property produccionMinima

}

