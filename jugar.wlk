import historia.*
import barco.*
import personaje.*
object jugarJuego {
  
  method iniciar() {
    game.title("Teseo y el Minotauro")
    game.width(15)
    game.height(10)
    game.cellSize(64)

    historia.iniciar(barco)

    keyboard.t().onPressDo({
    barco.terminar()                         // Saca el barco y el fondo del océano
    
    historia.agregarLineas(lineasParaElHilo) // Agrega las nuevas líneas
    historia.iniciar(barco)                  // Inicia la historia pasándole el barco para que después pueda volver
    })
    
    game.boardGround("fondoDeHistoria.jpg")


    game.addVisual(pantallaInicio)

    keyboard.e().onPressDo({
      if (game.hasVisual(pantallaInicio)) {
      game.removeVisual(pantallaInicio)
      }
    })

  }
}