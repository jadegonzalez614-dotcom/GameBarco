import personaje.*
import jugar.*
import laberinto.*
import barco.*

/*una vez llega a la isla la princesa para darle permanentemente el hilo
recurre a hacerlo pasar una prueba*/

/*el nivel del hilo consiste en pasar por encima de los altares para ir
encendiendolos sin cruzar su mismo recorrido, una vez encendidos todos va a
poder desbloquear la salida*/

/*una vez consigue pasar el nivel gana permanentemente el hilo*/


object nivelHilo {

    const elementosNivel = []
    var altaresRestantes = 5

    method iniciar() {

        elementosNivel.clear()
        altaresRestantes = 5

        game.addVisual(puertaSalida)
        elementosNivel.add(puertaSalida)

        game.addVisual(personaje)
        personaje.position(game.at(13, 4))

        const altar1 = new Altar(position = game.at(2, 1), numero = 1)
        const altar2 = new Altar(position = game.at(12, 7), numero = 2)
        const altar3 = new Altar(position = game.at(11, 1), numero = 3)
        const altar4 = new Altar(position = game.at(6, 4), numero = 4)
        const altar5 = new Altar(position = game.at(3, 6), numero = 5)
        const altares = [altar1, altar2, altar3, altar4, altar5]

        altares.forEach({ altar => elementosNivel.add(altar)
            game.addVisual(altar)
        })

        
    }

    method verificarTerminar() {
        if (puertaSalida.abierta() and personaje.position() == game.at(1, 8)) {
            self.terminar()
            puertaSalida.cerrarPuerta()
        }
    }

    method terminar() {
        elementosNivel.forEach({ elemento => 
            if (game.hasVisual(elemento)) {
                game.removeVisual(elemento)
            }
        })
        
        if (game.hasVisual(personaje)) {
            game.removeVisual(personaje)
        }

        //laberinto.iniciar()
    }
}

class Altar {
    var property position
    const property numero
    var property activado = false

    method image() {
        return if (activado) "vasijaUsada" + numero + ".png" 
               else "vasijaNormal" + numero + ".png"
    }

}

object puertaSalida {
    const property position = game.origin()
    var property abierta = true

    method position() = position

    method image() {
        return if (abierta) "fondoAbierto.jpg" else "fondoCerrado.jpg"
    }

    method abrirPuerta() {
        abierta = true
    }
    method cerrarPuerta() {
        abierta = false
    }

}

