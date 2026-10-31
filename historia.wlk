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
import barco.*


class Linea{
  const letras 

  method letras() = letras 
} 

const oracion = new Linea(letras = "El rey Minos de Creta obliga a Atenas a enviar un tributo\nde 7 jovenes y 7 doncellas atenienses...")
const oracion1 = new Linea(letras = "Obligados a ser devorado  por el MINOTAURO  en el laberinto...")
const oracion2 = new Linea(letras = "Teseo, principe de Atenas, decide postularse voluntariamente\ncomo uno de los jovenes para poner fin al sufrimiento de su pueblo.")
const oracion3 = new Linea(letras = "¡Ayuda a Teseo a llegar a Creta para poder acabar con el MINOTAURO!")
const oracion4 = new Linea(letras = "Presiona ENTER una vez más para comenzar tu viaje...")

const lineasParaElHilo = [new Linea(letras = "Teseo logro llegar a Creta y cuenta con su armadura"),
                          new Linea(letras = "Una vez en Creta conoce a Ariadne la princesa, hija del rey Minos..."),
                          new Linea(letras = "Al verse quedan enamorados uno del otro..."),
                          new Linea(letras = "Ariadne ofrece ayudarlo para derrotar al MINOTAURO\ny le da un hilo rojo para no perderse en el laberinto"),
                          new Linea(letras = "Pero antes Teseo debe demostrar que es digno de el(?....")]
                        
const lineasParaElLaberinto = [new Linea(letras = "¡Teseo a obtenido el hilo con exito!"),
                               new Linea(letras = "Ahora debe de dirigirse al Laberinto y conseguir\nel ultimo objeto 'Una Espada Sagrada' "),
                               new Linea(letras = "¡¡¡Finalmente asi podra derrotar al MINOTAURO!!!")]



object historia {

  const lineas = [oracion, oracion1, oracion2, oracion3, oracion4]

  method position() = game.center() // Posiciona en el centro

  method text() = if (lineas.isEmpty()) "" else lineas.head().letras() //Muestra la primera linea, si la lista esta vacia no hace nada y devuelve vacio asi no tira error
  method textColor() = "FFFFFFFF" //Blanco

  method iniciar(unJuego) {
    game.addVisual(self)
    keyboard.enter().onPressDo({
      if (game.hasVisual(self)) {
        self.avanzarConLaHistoria(unJuego)
      }
    })
  } // ro: agrego el fondo 
  method avanzarConLaHistoria(unJuego){
    if(!lineas.isEmpty()){
        lineas.remove(lineas.head()) //Va sacando de a una las lineas
    }
    if(lineas.isEmpty()){     //Si esta vacia la lista empieza el juego
        self.comenzarJuego(unJuego)    
    }
  } 

  method comenzarJuego(unJuego) {
   if (game.hasVisual(self)) { // ro: hay que arreglar que se borre el fondo de la historia cuando termina.
      game.removeVisual(self) 
   
      unJuego.iniciar()
    }
      // ro:cuando termina la historia agrego el juego en nivel facil.
  }

  method agregarLineas(unasLineas) {
    lineas.addAll(unasLineas)
  }

  method lineas() = lineas
}

object fondoHistoria {
  method position() = game.at(0, 0)
  method image() = "fondoDeHistoria2.jpg"
}