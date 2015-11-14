//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init (velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init () {
        velocidad  = Velocidades (velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad () -> (actual: Int, velocidadEnCadena : String ) {
        var actual:Int
        var velocidadEnCadena : String
        if (velocidad == Velocidades.Apagado) {
            actual = 0;
            velocidadEnCadena = "Apagado"
            velocidad = Velocidades.VelocidadBaja
            
        }
        else if (velocidad == Velocidades.VelocidadBaja) {
            actual = 20;
            velocidadEnCadena = "VelocidadBaja"
            velocidad = Velocidades.VelocidadMedia
            
        }
        else if (velocidad == Velocidades.VelocidadMedia) {
            actual = 50;
            velocidadEnCadena = "VelocidadMedia"
            velocidad = Velocidades.VelocidadAlta
        }
        else {
            actual = 120;
            velocidadEnCadena = "VelocidadAlta"
            velocidad = Velocidades.Apagado
        }
        
        print("\(actual) , \(velocidadEnCadena) ")
        return (actual, velocidadEnCadena)
    }
}

var automovil = Auto ()
automovil.velocidad

for var i = 0; i < 20; i++ {
    automovil.cambioDeVelocidad()
}
