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
        let distanciaDias: Int = dateComponents.calendar!.numberOfDaysBetween(dataInicial, to: Date())
        print("Data de início: \(dataInicial)")
        print("Data atual: \(Date())")
        if distanciaDias > dias.keys.count - 1 {
            print("Numero do dia de cultivo atual: \(distanciaDias)")
        }
    }
}

extension Calendar {
    func numberOfDaysBetween(_ from: Date, to: Date) -> Int {
        let fromDate = startOfDay(for: from)
        print("fromDate: \(fromDate)")
        let toDate = startOfDay(for: to)
        print("toDate: \(toDate)")
        let numberOfDays = dateComponents([.day], from: fromDate, to: toDate)
        return numberOfDays.day! + 1
    }
}
