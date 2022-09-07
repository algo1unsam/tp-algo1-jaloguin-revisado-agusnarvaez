import chicos.*
import legion.*
import elementos.*

object mirca {
	var property tolerancia = 22

	
	method serAsustadoPor(ninio){
		ninio.recibirCaramelos(self.caramelosAEntregar(ninio))
		tolerancia--
	}
	
	method seAsusta(ninio){
		return tolerancia<ninio.capacidadSusto()
	}
	
	method caramelosAEntregar(ninio){
		if(self.seAsusta(ninio)){
			return ninio.capacidadSusto()-self.tolerancia()
		}else{
			return 0
		}
	}

}