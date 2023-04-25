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
    var imagem: String = "girassolTriste"
    
    init(dia: Int) {
        self.numero = dia
        self.tarefas = definirTarefas(dia: dia, tarefas: definirQuantidadeTarefas(dia: dia))
        definirImagem()
    }
    
    private func definirQuantidadeTarefas(dia: Int) -> [Bool] {
        switch dia % 7 {
        case 1, 4:
            return [false, false, false]
        default:
            return [false, false]
        }
    }
    
    private func definirTarefas(dia: Int, tarefas: [Bool]) -> [TarefaModel] {
        switch dia % 7 {
        case 1, 4:
            return [.init(titulo: "Coloque no Sol", concluida: tarefas[0]), .init(titulo: "Regue", concluida: tarefas[1]), .init(titulo: "Procure Pragas", concluida: tarefas[2])]
        default:
            return [.init(titulo: "Coloque no Sol", concluida: tarefas[0]), .init(titulo: "Rega", concluida: tarefas[1])]
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
            self.imagem = "girassolTriste"
        }
        else if contadorFalhas > 0 && contadorFalhas < tarefas.count {
            self.imagem = "girassolNeutro"
        }
        else {
            self.imagem = "girassolFeliz"
        }
    }
}
