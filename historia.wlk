import wollok.game.*
import example.*
object paleta {
  const property blanco = "FFFFFFFF"
}

object historia {
  method position() = game.center()
  //method image() = "fondogriegosintexto.jpg"
  method text() = "Teseo a partido de Atena a Creta"
  method textColor() = paleta.blanco()    
<<<<<<< HEAD
}
=======
}*/

import wollok.game.*
import barco.*


class Linea{
  const letras 

  method letras() = letras 
} 

const oracion = new Linea(letras = "Apreta ENTER para comenzar...")
const oracion1 = new Linea(letras = "El rey Minos de Creta obliga a Atenas a enviar un tributo\nde 7 jovenes y 7 doncellas atenienses, obligados a ser devorado\npor el MINOTAURO  en el laberinto...")
const oracion2 = new Linea(letras = "Teseo, principe de Atenas, decide postularse voluntariamente\ncomo uno de los jovenes para poner fin al sufrimiento de su pueblo.")
const oracion3 = new Linea(letras = "¡Ayuda a Teseo a poder acabar con el MINOTAURO!")
const oracion4 = new Linea(letras = "Pero antes debe conseguir una ARMADURA para protegerse,\nel HILO que lo ayudara a salir del laberinto y mas importante\nuna ESPADA que lo ayudara a derrotar al Minotauro.")
const oracion5 = new Linea(letras = "En primera instancia deberas esquivar todas las rocas para conseguir la armadura\nPresiona ENTER una vez mas para comenzar tu viaje...")

const lineasParaElHilo = [new Linea(letras = "Teseo logro llegar a Creta y cuenta con su armadura\nPresiona ENTER para continuar..."),
                          new Linea(letras = "Una vez en Creta conoce a Ariadne la princesa, hija del rey Minos,\nal verse quedan enamorados uno del otro..."),
                          new Linea(letras = "Ariadne ofrece ayudarlo para derrotar al MINOTAURO\ny le da un hilo rojo para no perderse en el laberinto.\nPero antes Teseo debe demostrar que es digno de el(?...."),
                          new Linea(letras = "En segunda instancia deberas pasar por encima de los\naltares he ir encendiendolos sin cruzar tu mismo recorrido\nUna vez todos encendidos se desbloqueara la salida.")
                          ]
                        
const lineasParaElLaberinto = [new Linea(letras = "¡Teseo a obtenido el hilo con exito!"),
                               new Linea(letras = "Ahora debe de dirigirse al Laberinto donde esta el Minotauro y conseguir\nel ultimo objeto 'Una Espada Sagrada' "),
                               new Linea(letras = "¡¡¡Finalmente asi podra derrotar al MINOTAURO!!!")]

>>>>>>> 891a48b58ecf2e39cb01618f41dfd39f09d36b7a



/*
object historia {

  var juegoActivo = null
  const lineas = [oracion, oracion1, oracion2, oracion3, oracion4, oracion5]
  const musicaGriega = game.sound("MusicaDeLiraGriega.mp3")

  method position() = game.center()  // Posiciona en el centro

  method text() = if (lineas.isEmpty()) "" else lineas.head().letras() //Muestra la primera linea, si la lista esta vacia no hace nada y devuelve vacio asi no tira error
  method textColor() = "FFFFFFFF" //Blanco

  method iniciar(unJuego) {
    juegoActivo = unJuego
    game.addVisual(self)
    musicaGriega.shouldLoop(true)
    musicaGriega.volume(0.2)
    musicaGriega.play()
  } 
  method avanzarConLaHistoria(){
    if(!lineas.isEmpty()){
      lineas.remove(lineas.head()) //Va sacando de a una las lineas
    }
    if(lineas.isEmpty()){     //Si esta vacia la lista empieza el juego
      musicaGriega.stop()
      self.comenzarJuego()    
    }
  } 

  method comenzarJuego() {
<<<<<<< HEAD
    game.removeVisual(self) // Quitamos el texto de la pantalla
    //Pantalla de inicio con los controles? O eso va al inicio?
    game.boardGround("oceanopixel.jpg")
    game.addVisualCharacter(barco)
    
  }
  method position()=game.origin()

}
*/
=======
   if (game.hasVisual(self)) { // ro: hay que arreglar que se borre el fondo de la historia cuando termina.
      game.removeVisual(self) 

      juegoActivo.iniciar()
    }
     // ro:cuando termina la historia agrego el juego en nivel facil.
  }

  method agregarLineas(unasLineas) {
    lineas.addAll(unasLineas)
  }

  method lineas() = lineas
}
>>>>>>> 891a48b58ecf2e39cb01618f41dfd39f09d36b7a
