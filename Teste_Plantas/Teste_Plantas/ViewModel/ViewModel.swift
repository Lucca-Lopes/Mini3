//
//  ViewModel.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 27/03/23.
//

import SwiftUI

class ViewModel: ObservableObject {
    private var dados = UserDefaultsModel()
    
    public let screenWidth = UIScreen.main.bounds.size.width
    public let screenHeight = UIScreen.main.bounds.size.height
    
    @Published var girassois: [GirassolModel] = []
    
    var dateComponents = DateComponents()
    
    public init() {
        self.girassois = dados.girassois
        self.dateComponents.timeZone = TimeZone.current
        self.dateComponents.calendar = Calendar.current
        verificarDiaAtual()
    }
    
    public func atualizarTarefa(indexGirassol: Int, indexDia: Int, indexTarefa: Int){
        self.girassois[indexGirassol].dias[indexDia].tarefas[indexTarefa].concluida.toggle()
        self.girassois[indexGirassol].dias[indexDia].definirImagem()
        salvarDados()
    }
    
    public func salvarDados(){
        dados.atualizarGirassois(girassois: self.girassois)
    }
   
    private func verificarDiaAtual(){
        if self.girassois.count > 0 {
            for i in 0...self.girassois.count-1 {
                let diaAtualCultivo: Int = dateComponents.calendar!.numberOfDaysBetween(self.girassois[i].dataInicio, to: Date())
                if diaAtualCultivo > self.girassois[i].dias.count {
                    while self.girassois[i].dias.count < diaAtualCultivo {
                        self.girassois[i].dias.append(.init(dia: self.girassois[i].dias.count + 1))
                    }
                }
            }
        }
    }
    
    public func definirCorBotao(nomeImagem: String) -> String{
        switch nomeImagem {
        case "girassolTriste":
            return "corFundoTriste"
        case "girassolNeutro":
            return "corFundoNeutro"
        default:
            return "corFundoBotao"
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
