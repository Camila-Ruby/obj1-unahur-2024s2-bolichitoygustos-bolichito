import objetos.*
import personas.*

object bolichito {
    var objetoEnMostrador = munieco
    var objetoEnVidiera = placa

    method objetoEnMostrador(unObjeto){
        objetoEnMostrador = unObjeto
    }
    method objetoEnVidriera(unObjeto){
        objetoEnVidiera = unObjeto
    }
    method objetoEnMostrador(){
        return objetoEnMostrador
    }
    method objetoEnVidriera(){
        return objetoEnVidiera
    }
    method esBrillante(){
        return objetoEnMostrador.esDeMaterialQueBrilla() &&
        objetoEnVidiera.esDeMaterialQueBrilla()
    }
    method esMonocromatico(){
        return objetoEnMostrador.color() == objetoEnVidiera.color()
    }
    method estaEquilibrado(){
        return objetoEnMostrador.peso() > objetoEnVidiera.peso()
    }
    method tieneExibidoElColor(unColor){
        return objetoEnMostrador.color() == unColor ||
        objetoEnVidiera.color() == unColor
    }
    method puedeMejorar(){
        return !self.estaEquilibrado() || self.esMonocromatico()
    }
    method puedeOfrecerleAlgoA(unaPersona){
        return unaPersona.leGusta(objetoEnMostrador) 
        || unaPersona.leGusta(objetoEnVidiera)
    }
}