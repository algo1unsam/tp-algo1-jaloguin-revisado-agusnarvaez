import elementos.*
import adultos.*

object macaria {
	var property nivelIra = 10
	var property disfraces = [ ]
	var property caramelos = 0
	
	method hacerEnojar(){
		nivelIra++		
	}
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	
	method dejarDeUsarMenosEfectivo(){
		self.dejarDisfraz(self.disfrazConMenosSusto())
	}
	
	method disfrazConMenosSusto(){
		return disfraces.min({disfraz=>disfraz.capacidadSusto()})
	}
	
	method capacidadSusto(){
		return nivelIra + disfraces.sum({disfraz=>disfraz.capacidadSusto()})
	}
	
	method asustar(adulto){
		self.recibirCaramelos(adulto.esAsustado(self))
	}
	method recibirCaramelos(cantidad){
		var total = cantidad - cantidad.div(4)
		caramelos+=(total)
	}

}

object pancracio {
	
	var disfraces = mascaraDracula
	
	var property caramelos = 0
	
	var property cantidadU = 4
	
	method disfraces(){
		return [disfraces]
	}
	
	method capacidadSusto(){
			return cantidadU + disfraces.capacidadSusto()
	}
	
	method disfrazar(nuevoDisfraz){
		disfraces=nuevoDisfraz
	}

	method quitarDisfraz(nuevoDisfraz){
		cantidadU+=2
	}
	
	method asustar(adulto){
		self.recibirCaramelos(adulto.esAsustado(self))
	}
	method recibirCaramelos(cantidad){
		caramelos+=cantidad
	}
	
}

//* El chico inventado

object pedro {
	var property disfraces = [ ]
	
	var property caramelos = 0

	method disfrazar(nuevoDisfraz){
		disfraces.add(nuevoDisfraz)
	}

	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}
	
	method asustar(adulto){
		self.recibirCaramelos(adulto.esAsustado(self))
	}
	
	// Pedro es re cagón y asusta la mitad
	method capacidadSusto(){
			return disfraces.sum({disfraz=>disfraz.capacidadSusto()})/2
	}
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}
	
	// Se le cae la mitad por cagón!
	method recibirCaramelos(cantidad){
	// caramelos+=cantidad
	}
}


object barrio{
	var property chicos = []
	
	method ordenarPorCaramelos(){
		chicos.sortBy({x,y=>x.caramelos()>y.caramelos()})
	}
	
	method chicosConMasCaramelos(cant){
		
		self.ordenarPorCaramelos()
		
		return chicos.take(cant)
	}
	
	method algunoMuyAsustador(){
		
		return chicos.any({chico=>chico.capacidadSusto()>42})
	}
	
}
