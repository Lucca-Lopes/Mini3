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
}
