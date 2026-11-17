import pantallas.*
import laberinto.*
import hilo.*
import barco.*


object personaje {
    var property position = game.at(8,4)//game.at(13, 4)
    const pantallas = [menuInicio,pantallaControles]
    const paredesActuales = []

    method moverA(nuevaPosicion) {
        if (self.puedeMoverse() and self.esPosicionValida(nuevaPosicion, paredesActuales)) { 
            position = nuevaPosicion
            self.pasarDeNivel()
        }
    }

    method puedeMoverse() {
            return not pantallas.any({ p => game.hasVisual(p) }) 
    } // Bloqueo el movimiento del personaje mientras esta la pantalla inicio visible

    method limitesDelTablero(pos) {
        return pos.x().between(0, game.width() - 1) and
               pos.y().between(0, game.height() - 2)
    }
    
    method esPared(pos) {
        return paredesActuales.contains(pos)
    }
    method esPosicionValida(pos,paredes) {
        return self.limitesDelTablero(pos) and not self.esPared(pos)
    }

    // Método para cambiar las paredes del escenario: 
    // limpia las colisiones viejas y carga las nuevas del escenario que toque
    method cargarEscenario(nuevasParedes) {
        paredesActuales.clear()
        paredesActuales.addAll(nuevasParedes)
    }

    method pasarDeNivel() {
        nivelHilo.verificarTerminar()
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