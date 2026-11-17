object barco{
    var property image = "barco3.png"
    var property position = game.origin()
}

object oceano{
    method iniciar(){
    game.boardGround("oceanopixel.jpg")
    game.addVisualCharacter(barco)
    }


}

