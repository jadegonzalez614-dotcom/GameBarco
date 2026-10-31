object personaje {
    var property position = game.at(14, 4)
    var property vida = 3 // Cantidad de corazones máxima al inicio
    const celdasProhividas = [] // game.at(0, 0), game.at(0, 1), game.at(0, 2),game.at(5, 5), game.at(5, 6), game.at(5, 7)
    // game.at(0,1),game.at(8,1),game.at(8,2),game.at(8,3),game.at(8,4),game.at(8,5),game.at(8,6),game.at(8,7),game.at(8,8),game.at(8,9) 

    // const inventario = []

method moverA(nuevaPosicion) {
    if (self.esPosicionValida(nuevaPosicion)) { //self.puedeMoverse() and 
        position = nuevaPosicion
        self.verificarEscenario()
    }
}
    method puedeMoverse() {
        return not game.hasVisual(pantallaInicio) 
    } // Bloqueo el movimiento del personaje mientras esta la pantalla inicio visible

method esPosicionValida(pos) {
    const dentroDelTablero =
        pos.x().between(0, game.width() - 1) and
        pos.y().between(0, game.height() - 2)

    const esPared = celdasProhividas.contains(pos)

    return dentroDelTablero and not esPared
}

method verificarEscenario() {
    if (self.position() == game.at(0, 0)) {
        laberinto.iniciar()
    }
}

    method subir() {
        self.moverA(position.up(1))
    }

    method bajar() {
        self.moverA(position.down(1))
    }

    method izquierda() {
        self.moverA(position.left(1))
    }

    method derecha() {
        self.moverA(position.right(1))
    }

    method image() = "personajeDerecha.png"
}

object pantallaInicio {
    method image() = "pantallaInicio.jpg"
    method position() = game.origin()
}