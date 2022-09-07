import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var property integrantes = [ ]
	var caramelos = 0
	
	method todosLosDisfraces(){
		return integrantes.map({integrante => integrante.disfraces().asSet()}).flatten()
	}
	
	method disfracesRepetidos(){
		return self.todosLosDisfraces().filter({x=>self.todosLosDisfraces().occurrencesOf(x)>1})
	}
	
	method sacarseloATodos(disfraz){
		integrantes.forEach({integrante=>integrante.quitarDisfraz(disfraz)})
	}
	
	method normaSinRepetidos(){
		self.disfracesRepetidos().forEach({disfraz=>self.sacarseloATodos(disfraz)})
	}
	
	method agregarIntegrantes(integrantesNuevos){
		integrantes+=integrantesNuevos
	}
	
	method agregarIntegrante(integrante){
		integrantes.add(integrante)
	}

	method capacidadSusto(){
		return integrantes.sum({integrante=>integrante.capacidadSusto()})
	}
	
	method asustar(adulto){
		self.recibirCaramelos(adulto.esAsustado(self))
	}
	method caramelos(){
		return integrantes.sum({integrante=>integrante.caramelos()})
	}
	
	method recibirCaramelos(cantidad){
		self.lider().recibirCaramelos(cantidad)
	}
	
	method lider(){
		return integrantes.max({integrante=>integrante.capacidadSusto()})
	}
	
	
}

