//
//  TarefaModel.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 28/03/23.
//

import Foundation

struct TarefaModel: Hashable, Codable {
    let titulo: String
    var nomeIcone: String = ""
    var concluida: Bool
    
    init(titulo: String, concluida: Bool) {
        self.titulo = titulo
        self.concluida = concluida
        self.nomeIcone = self.definirIconeTarefa(titulo: titulo)
    }
    
    public func definirIconeTarefa(titulo: String) -> String{
        switch titulo {
        case "Coloque no Sol":
            return "sun.max"
        case "Procure Pragas":
            return "ant"
        default:
            return "drop"
        }
    }
}
