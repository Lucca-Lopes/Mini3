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
    
    @Published var dataInicial: Date
    @Published var cultivoIniciado: Bool
    @Published var dias: [DiaModel] = []
    
    var dateComponents = DateComponents()
    
    public init() {
        self.dataInicial = dados.dataInicial
        self.cultivoIniciado = dados.cultivoIniciado
        self.dias = dados.dias
        self.dateComponents.timeZone = TimeZone.current
        self.dateComponents.calendar = Calendar.current
        verificarDiaAtual()
    }
    
    public func iniciarCultivo(cultivoIniciado: Bool){
        self.cultivoIniciado = cultivoIniciado
        self.dados.definirCultivoIniciado(cultivoIniciado: cultivoIniciado)
    }
    
    public func atualizarTarefa(numeroDia: Int, indexTarefa: Int){
        dias[numeroDia - 1].tarefas[indexTarefa].concluida.toggle()
        dias[numeroDia - 1].definirImagem()
        salvarDados()
    }
    
    public func salvarDados(){
        dados.atualizarDias(dias: self.dias)
    }
   
    private func verificarDiaAtual(){
        let diaAtualCultivo: Int = dateComponents.calendar!.numberOfDaysBetween(dataInicial, to: Date())
        if diaAtualCultivo > dias.count {
            while dias.count < diaAtualCultivo {
                let tarefasNovoDia = designarTarefas(dia: dias.count + 1)
                dias.append(.init(dia: dias.count + 1, tarefas: tarefasNovoDia))
            }
            print("Numero do dia de cultivo atual: \(diaAtualCultivo)")
            print("Dias: \(dias)")
        }
    }
    private func designarTarefas(dia: Int) -> [Bool] {
        switch dia % 7 {
        case 1:
            return [false, false, false]
        case 2, 4, 6:
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
