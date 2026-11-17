import historia.*

object barco2{
  
  var property position = game.at(0, 0)

  method image() = "barco22.png"

  method iniciar() {
    game.addVisual(fondoOceano)
    game.addVisual(self)
  }

  method terminar() {
    game.removeVisual(fondoOceano)
    game.removeVisual(self)

  }

  method subir() {
    const nuevaY = position.y() +1 //Le sumo tres a la posicion para que salte de 3 en tres
    const topeMaximo = 6             //Hasta donde llega
    
    if (nuevaY <= topeMaximo) {
      position = game.at(position.x(), nuevaY)
    } else {                                          //Si se pasa del tope lo ponemos directamente en el maximo
      position = game.at(position.x(), topeMaximo)
    }
  }

  method bajar() {
    const nuevaY = position.y() -1
    
    if (nuevaY >= 0) {
      position = game.at(position.x(), nuevaY)
    } else {                                    //Si cuando se resta queda en numero negativo osea es menor a 0 deja al barco directamente en la posicion 0
      position = game.at(position.x(), 0)
    }
  }

  method derecha() {
    const nuevaX = position.x() + 1 
    if (nuevaX <= 11) { 
      position = game.at(nuevaX, position.y())
    }
  }

  method izquierda() {
    const nuevaX = position.x() - 1
    if (nuevaX >= 0) {
      position = game.at(nuevaX, position.y())
    }
  }
} // ro:agrego el barco de teseo.

object oceano{
  method iniciar(){
    game.addVisual("tableroMejor.jpg")
    game.addVisualCharacter(barco)
  } // ro:agrego el oceano que tiene que pasar teseo para el proximo nivel.

} 
object fondoOceano {
  method position() = game.at(0, 0)
  
  method image() = "tablero.jpg"
} //Jade:Para que se pueda poner el fondo, metodo temporalmente



object piedra {
  var property image = "2.png"
  var property position = game.origin()  
}

