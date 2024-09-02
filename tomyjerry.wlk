object tom {
	
	//Completar! Pueden aparecer variables y métodos nuevos!
	var energia = 50
	 
	method comer(raton) {
		energia = energia + self.energiaQueVaAGanarAlComerA(raton)
	}
	
	method correr(distancia){
		energia = energia - self.energiaQueVaAGastarAlCorrer(distancia)
	}
	
	method velocidadMaxima()  {
		return 5 + energia / 10
	}

	method puedeComerRatonA (distancia){
		return energia >= self.energiaQueVaAGastarAlCorrer(distancia)
	}
	
	method puedeComerA_ADistancia_(raton, distancia){
		 return self.puedeComerRatonA(distancia) && (self.energiaQueVaAGastarAlCorrer (distancia) 
		                                          <   self.energiaQueVaAGanarAlComerA  (raton))
	}
	
	method energiaQueVaAGastarAlCorrer(distancia){
		return distancia / 2

	}

	method energiaQueVaAGanarAlComerA(raton){
		return 12 + raton.peso()
	}

	//getter para el test

	method energia() = energia
		
}

object jerry {

	var edad = 2

	method peso(){
		return edad * 20

	}

	method cumplir(){
		edad = edad + 1
	}
}

object nibbles {
	method peso(){
		return 35
	}
}


//nunca recordar variables que dependen de otra, si eso pasa, es un calculo (method)

