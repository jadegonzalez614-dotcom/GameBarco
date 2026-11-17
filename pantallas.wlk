object menuInicio {
  method iniciar() {
    game.addVisual(self)
    keyboard.e().onPressDo({
      game.removeVisual(self)
    })
    keyboard.c().onPressDo({
      game.removeVisual(self)
      pantallaControles.iniciarControles()
    })
  }

  method image() = "pantallaInicio.png"
  method position() = game.at(0, 0)
}

object pantallaControles { // ¡¡ la imagen no esta completa esta a modo boceto !!
    method image() = "menuControles.png"
  method position() = game.at(0, 0)
  
  method iniciarControles() {
    game.addVisual(self)
    
    keyboard.backspace().onPressDo({ // en la imagen puse esc pero enrealidad es backspace !!!!!!
      game.removeVisual(self)
      menuInicio.iniciar()
    })
  }
}
object fondoHUD {
    method image() = "fondoHUD.jpg"
    method position() = game.at(0,9)
}