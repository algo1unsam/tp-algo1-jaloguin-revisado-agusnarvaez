object trajeDeBruja {
	
	method capacidadSusto() {
		return 10
	}
} 

object barba {
	
	var property longitud = 2
	
	method capacidadSusto (){
		return longitud*5
	}
	
	method pasarTiempo(){
		longitud--
	}
	
	method agregarPelos(){
		longitud++
	}
}

object mascaraDracula {
	
	var property tamanio = 2
	
	method capacidadSusto (){
		return tamanio*2
	}
	
	

}

object mascaraFrankenstein {
	var property tamanio = 22
	
	method capacidadSusto (){
		return tamanio
	}
}

object mascaraPolitico {
	
	var property cantidadDePromesas = 5
	
	method capacidadSusto(){
		return cantidadDePromesas*2
	}
}

