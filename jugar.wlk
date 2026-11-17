import hilo.*
import historia.*
import barco.*
import personaje.*
import pantallas.*

object jugarJuego {
  
  method iniciar() {
    game.title("Teseo y el Minotauro")
    game.width(15)
    game.height(10)
    game.cellSize(64)

    var personajeActual = barco

    
    historia.iniciar(barco)

    keyboard.t().onPressDo({
    barco.terminar()                         // Saco el barco y el fondo del oceano
    
    personajeActual = personaje
    historia.agregarLineas(lineasParaElHilo) // Agrego las nuevas lineas
    historia.iniciar(nivelHilo)              //Siguente nivel    
    })
    
    game.boardGround("fondoDeHistoria.jpg")

    //game.addVisual(menuInicio)

    keyboard.w().onPressDo({ personajeActual.subir() })
    keyboard.s().onPressDo({ personajeActual.bajar() })
    keyboard.a().onPressDo({ personajeActual.izquierda() })
    keyboard.d().onPressDo({ personajeActual.derecha() })

    keyboard.enter().onPressDo({
      if (game.hasVisual(historia)) {
        historia.avanzarConLaHistoria() 
      }
    })
    
  }
}