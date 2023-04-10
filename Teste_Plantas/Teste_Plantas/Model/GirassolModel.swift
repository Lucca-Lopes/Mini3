//
//  GirassolModel.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 06/04/23.
//

import Foundation

struct GirassolModel: Hashable, Codable {
    let nome: String
    let nomeImagem: String
    var dias: [DiaModel] = []
    let dataInicio: Date
    
    init(nome: String) {
        self.nome = nome
        self.nomeImagem = "girassolFeliz"
        self.dias = [.init(dia: 1)]
        self.dataInicio = Date()
    }
}
