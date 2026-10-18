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
    var defensa
    var armadura
    const nombre = ""

    method nombre() = nombre
    method vida() = vida
    method defensa() = defensa
    method cambiarArma(nuevaArma){arma = nuevaArma}
    method atacar(otroGladiador)
    method defenderse()
}
class Mirmillon inherits Gladiador{
    var fuerza
    const destreza = 15

    override method defensa() = destreza /2
    method poderAtaque() = arma.ataque() + fuerza
    method cambiarArmadura(nuevaArmadura){armadura = nuevaArmadura}
    override method atacar(otroGladiador){
        otroGladiador.vida() - (otroGladiador.defensa() - self.poderAtaque())
        otroGladiador.contraAtaque(self)
    }
    method contraAtaque(gladiador){
        gladiador.atacar(self)       
    }
}
class Dimachaerus inherits Gladiador{
    const fuerza = 10
    var destreza
    const armas = []

    override method defensa() = armadura + destreza
    method poderAtaque() = armas.sum({a=>a.ataque()}) + fuerza
    override method atacar(otroGladiador){
        otroGladiador.vida() - (otroGladiador.defensa() - self.poderAtaque())
        destreza = destreza + 1
        otroGladiador.contraAtaque(self)
    }
    method contraAtaque(gladiador){
        self.atacar(gladiador)           
    }
}

object coliseo{
    const grupos = []

    method nombre(){
        return grupos.map({g=>g.nombre()})
    }
    method cantidadPeleasQueParticipo(){
        return grupos //completar
    }
    method agregarGladiador(gladiador){grupos.add(gladiador)}
    method quitarGladiador(gladiador){grupos.remove(gladiador)}
    
    method elegirCampeon(){
        //completar
    }

}
