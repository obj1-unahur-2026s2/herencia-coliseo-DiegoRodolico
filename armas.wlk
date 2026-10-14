class ArmaDeFilo{
    var filo 
    var longitud 
    method ataque() = filo * longitud 
}
class ArmaContundente{
    var peso
    method ataque() = peso
}
class Gladiador{
    var arma
    var vida = 100
    var armadura //casco suma 10 y escudo suma 5 + 10% de destreza
    
    method cambiarArma(nuevaArma){arma = nuevaArma}
    method atacar()
    method defenderse()
}
class Mirmillon inherits Gladiador{
    var fuerza
    const destreza = 15

    method cambiarArmadura(nuevaArmadura){armadura = nuevaArmadura}
    override method atacar(){}
}
class Dimachaerus inherits Gladiador{
    const fuerza = 10
    const destreza
}
