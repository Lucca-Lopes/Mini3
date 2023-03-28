//
//  CardPlantaModel.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 27/03/23.
//

import Foundation
import SwiftUI

struct CardPlantaModel: Hashable {
    let dia: Int
    let tarefas: [Bool]
    var imagem: String = "girassol1" //Girassol1 == planta morrendo, girassol2 == planta medio triste, girassol3 == planta feliz
    
    init(dia: Int, tarefas: [Bool]) {
        self.dia = dia
        self.tarefas = tarefas
        definirImagem()
    }
    
    public mutating func definirImagem(){
        var contadorFalhas: Int = 0
        for tarefaConcluida in tarefas {
            if !tarefaConcluida {
                contadorFalhas += 1
            }
        }
        if contadorFalhas > 0 && contadorFalhas < tarefas.count {
            self.imagem = "girassol2"
        }
        else if contadorFalhas == tarefas.count {
            self.imagem = "girassol1"
        }
        else {
            self.imagem = "girassol3"
        }
    }
}
