import personaje.*
import barrahud.*
import minotauro.*
object laberinto {
    const posicionPersonaje = game.at(13,4)
    const property paredesLaberinto = [
        game.at(0, 0), game.at(1, 0), game.at(2, 0), game.at(3, 0), 
        game.at(4, 0), game.at(5, 0), game.at(6, 0), game.at(7, 0),
        game.at(8, 0), game.at(9, 0), game.at(10, 0), game.at(11, 0),
        game.at(12, 0), game.at(13, 0), game.at(14, 0), /*Colisiones de la pared sur dentro del laberinto 
                                                        (Alejo: lo hice asi porque no encontre otra forma )*/ 
        game.at(5,1),game.at(5,2),game.at(1,2),game.at(2,2),game.at(3,2),
        game.at(4,2),game.at(1,3),game.at(1,4),
        game.at(3,5),game.at(3,4),game.at(4,4),game.at(5,4),
        game.at(6,4),game.at(7,4),game.at(8,4),game.at(8,3),game.at(8,2),
        game.at(9,2),game.at(10,2),game.at(11,2),game.at(11,3),game.at(11,4),
        game.at(11,5),game.at(11,6),game.at(11,7),game.at(10,7),game.at(9,7),
        game.at(6,7),game.at(5,8)
    ]
    method esPared(pos) {
        return paredesLaberinto.contains(pos)
    }

        //game.at(2,7),game.at(2,6) game.at(2,7),game.at(3,7),game.at(4,7),game.at(5,7),game.at(6,7),game.at(5,8) // Colisiones dentro del laberinto
    method image() = "fondoLaberinto.jpg"
    method position() = game.at(0, 0)
    method iniciar() {

        personaje.cargarEscenario(paredesLaberinto)
        game.addVisual(self)
        personaje.position(posicionPersonaje)
        game.addVisual(barraHud)
        game.addVisual(personaje)
        game.addVisual(minotauro)

        minotauro.iniciarMovimiento()
    }
}