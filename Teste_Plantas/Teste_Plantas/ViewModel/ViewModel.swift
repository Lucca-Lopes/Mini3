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
        if diaAtualCultivo > dias.keys.count {
            while dias.count <= diaAtualCultivo {
                let tarefasNovoDia = designarTarefas(dia: dias.count)
                dias.updateValue(tarefasNovoDia, forKey: dias.count)
            }
            print("Numero do dia de cultivo atual: \(diaAtualCultivo)")
            print(dias)
        }
    }
    private func designarTarefas(dia: Int) -> [Bool] {
        switch dia % 7 {
        case 0:
            return [false]
        case 1:
            return [false, false, false]
        case 2:
            return [false, false]
        case 3:
            return [false]
        case 4:
            return [false, false]
        case 5:
            return [false]
        case 6:
            return [false, false]
        default:
            return [false]
        }
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
