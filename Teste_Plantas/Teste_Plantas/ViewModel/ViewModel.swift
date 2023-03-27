//
//  ViewModel.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 27/03/23.
//

import Foundation

class ViewModel: ObservableObject {
    private var dados = UDModel()
    
    @Published var dataInicial: Date
    @Published var dias: [Int : [Bool]]
    var dateComponents = DateComponents()
    var calendario = Calendar(identifier: .gregorian)
    
    public init() {
        self.dataInicial = dados.dataInicial
        self.dias = dados.dias
        verificarDiaAtual()
    }
    
    private func verificarDiaAtual(){
        let distanciaDias: Int = calendario.numberOfDaysBetween(dataInicial, Date())
        print("Data de início: \(dataInicial)")
        print("Data atual: \(Date())")
        if distanciaDias > dias.keys.count - 1 {
            print("Numero do dia de cultivo atual: \(distanciaDias)")
        }
    }
}

extension Calendar {
    func numberOfDaysBetween(_ from: Date,_ to: Date) -> Int {
        let fromDate = startOfDay(for: from)
        let toDate = startOfDay(for: to)
        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate)
        
        return numberOfDays.day! + 1 // <1>
    }
}
