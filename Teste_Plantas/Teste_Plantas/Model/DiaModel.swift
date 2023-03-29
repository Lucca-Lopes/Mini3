//
//  CardPlantaModel.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 27/03/23.
//

import Foundation

struct DiaModel: Hashable, Codable {
    let numero: Int
    var tarefas: [TarefaModel] = []
    var imagem: String = "" // girassol1 == planta morrendo, girassol2 == planta medio triste, girassol3 == planta feliz
    
    init(dia: Int, tarefas: [Bool]) {
        self.numero = dia
        self.tarefas = definirTarefas(dia: dia, tarefas: tarefas)
        definirImagem()
    }
    
    private func definirTarefas(dia: Int, tarefas: [Bool]) -> [TarefaModel] {
        switch dia {
        case 1:
            return [.init(titulo: "Coloque no Sol", concluida: tarefas[0]), .init(titulo: "Veja a água", concluida: tarefas[1]), .init(titulo: "Procure Pragas", concluida: tarefas[2])]
        case 2:
            return [.init(titulo: "Coloque no Sol", concluida: tarefas[0]), .init(titulo: "Veja a água", concluida: tarefas[1])]
        default:
            switch dia % 7 {
            case 1, 4:
                return [.init(titulo: "Veja a água", concluida: tarefas[0]), .init(titulo: "Procure Pragas", concluida: tarefas[1])]
            default:
                return [.init(titulo: "Veja a água", concluida: tarefas[0])]
            }
        }
    }
    
    public mutating func definirImagem(){
        var contadorFalhas: Int = 0
        for tarefa in tarefas {
            if !tarefa.concluida {
                contadorFalhas += 1
            }
        }
        if contadorFalhas == tarefas.count {
            self.imagem = "girassol1"
        }
        else if contadorFalhas > 0 && contadorFalhas < tarefas.count {
            self.imagem = "girassol2"
        }
        else {
            self.imagem = "girassol3"
        }
    }
}
