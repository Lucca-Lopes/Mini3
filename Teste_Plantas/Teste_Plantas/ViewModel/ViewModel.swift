//
//  ViewModel.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 27/03/23.
//

import SwiftUI

class ViewModel: ObservableObject {
    private var dados = UDModel()
    
    public let screenWidth = UIScreen.main.bounds.size.width
    public let screenHeight = UIScreen.main.bounds.size.height
    
    @Published var dataInicial: Date
    @Published var dias: [Int : [Bool]]
    var dateComponents = DateComponents()
    
    public init() {
        self.dataInicial = dados.dataInicial
        self.dias = dados.dias
        self.dateComponents.timeZone = TimeZone.current
        self.dateComponents.calendar = Calendar.current
        verificarDiaAtual()
    }
    
    private func verificarDiaAtual(){
        let diaAtualCultivo: Int = dateComponents.calendar!.numberOfDaysBetween(dataInicial, to: Date())
        if diaAtualCultivo > dias.keys.count - 1 {
            while dias.count - 1 < diaAtualCultivo {
//                if dia.value.isEmpty {
//                    dias.updateValue([false], forKey: dia.key)
//                }
            }
            print("Numero do dia de cultivo atual: \(diaAtualCultivo)")
//            dias.updateValue([true], forKey: 2)
//            dias.updateValue([false], forKey: 1)
            print(dias)
        }
    }
    private func designarTarefas(){
        
    }
}

extension Calendar {
    func numberOfDaysBetween(_ from: Date, to: Date) -> Int {
        let fromDate = startOfDay(for: from)
        let toDate = startOfDay(for: to)
        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate)
        return numberOfDays.day! + 1
    }
}
