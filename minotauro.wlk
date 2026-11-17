import laberinto.*
object minotauro {
    var property position = game.at(7, 4)


    method image() = "minotauroDerecha.png"

    method iniciarMovimiento() {
        game.onTick(700, "moverMinotauro", {
            if (game.hasVisual(self)) {
                self.mover()
            }
        })
    }

    method mover() {
        const direcciones = [
            position.up(1), 
            position.down(1), 
            position.left(1), 
            position.right(1)
        ]
        
        const validas = direcciones.filter({ pos => 
            self.esPosicionValida(pos) and not self.esCeldaProhibida(pos) 
        })
        
        if (!validas.isEmpty()) {
            position = validas.anyOne()
        }
    }

    method esPosicionValida(pos) {
        return pos.x().between(0, game.width() - 1) and
               pos.y().between(0, game.height() - 2)
    }

    method esCeldaProhibida(pos) {
        return laberinto.paredesLaberinto().contains(pos)
    }
}