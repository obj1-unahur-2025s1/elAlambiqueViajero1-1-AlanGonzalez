object luke{
    var cantidadViajes = 0
    var recuerdo = null
    var vehiculo = alambiqueVeloz

    method cantidadViajes() = cantidadViajes 

    method viajar(lugar){
        if (lugar.puedeLlegar(vehiculo)) {
            cantidadViajes = cantidadViajes + 1
            recuerdo = lugar.recuerdoTipico()
            vehiculo.consumirCombustible()
        }
    }
    method recuerdo() = recuerdo
    method vehiculo(nuevo) {vehiculo = nuevo}
}    

object alambiqueVeloz {
    var rapido = true
    var combustible = 20
    const consumoPorViaje = 10
    method tieneCombustible() = combustible >= consumoPorViaje
    method consumirCombustible() {
        combustible = combustible - consumoPorViaje
    }
    method rapido() = rapido
}

object moto{
    method rapido() = true
    method tieneCombustible() = not self.rapido()
    method consumirCombustible() { }
}

object antiguallaBlindada {
    var cantidadGangster = 5
    var nafta = 30
    const consumoPorViaje = 12
    method cantidadNuevaDeGangster(cantidad) {cantidadGangster = cantidad}
    method rapido() = cantidadGangster > 5
    method consumirCombustible() = nafta - consumoPorViaje
    method tieneCombustible() = nafta >= cantidadGangster && nafta >= consumoPorViaje

}

// La Antigualla Blindada podria tener una cantidad de gangster variable, de lo cual depende que sea rápido o que se modifique cuando viaja.


object estadosUnidos {
    method recuerdoTipico() = "Juguete de la estatua de la libertad"
    method puedeLlegar(vehiculo) = vehiculo.tieneCombustible()
}

object paris{
    method recuerdoTipico() = "Llavero Torre Eiffel"
    method puedeLlegar(movil) =  movil.tieneCombustible() 
}

object buenosAires{
    method recuerdoTipico() = "Mate"
    method puedeLlegar(auto) =  auto.rapido() 
}

object bagdad {
    var recuerdo = "bidon de petroleo"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevo) {recuerdo = nuevo }
    method puedeLlegar(cualquierCosa) = true
}

object lasVegas{
    var homenaje = paris
    method homenaje(lugar) {homenaje = lugar}
    method recuerdoTipico() = homenaje.recuerdoTipico()
    method puedeLlegar(vehiculo) = homenaje.puedeLlegar(vehiculo)
}