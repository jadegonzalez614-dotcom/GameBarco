/*object paleta {
  const property blanco = "FFFFFFFF"
}

object historia {
  method position() = game.center()
  //method image() = "fondogriegosintexto.jpg"
  method text() = "Teseo a partido de Atena a Creta"
  method textColor() = paleta.blanco()    
}*/

import wollok.game.*
import example.*


object historia {

  const lineas = [
    "El rey Minos de Creta obliga a Atenas a enviar un tributon\nde 7 jovenes y 7 doncellas atenienses...", 
    "Obligados a ser devorado  por el MINOTAURO  en el laberinto...",       
    "Teseo, principe de Atenas, decide postularse voluntariamente\ncomo uno de los jovenes para poner fin al sufrimiento de su pueblo.", 
    "¡Ayuda a Teseo a llegar a Creta para poder acabar con el MINOTAURO! ", 
    "Presiona ENTER una vez más para comenzar tu viaje..." 
  ]



  var property position = game.center() // Posiciona en el centro

  method text() = lineas.head() //Muestra la primera linea
  method textColor() = "FFFFFFFF" //Blanco
  method avanzarConLaHistoria(){
    if(!lineas.isEmpty()){
        lineas.remove(lineas.head()) //Va sacando de a una las lineas
    }
    if(lineas.isEmpty()){     //Si esta vacia la lista empieza el juego
        self.comenzarJuego()    
    }
  } 

  method comenzarJuego() {
    game.removeVisual(self) // Quitamos el texto de la pantalla
    //Pantalla de inicio con los controles? O eso va al inicio?
    
    game.addVisual(barco)
  }
}