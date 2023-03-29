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
    @Published var dias: [Int : [Bool]]
    @Published var diasModel: [DiaModel] = []
    
    var dateComponents = DateComponents()
    
    public init() {
        self.dataInicial = dados.dataInicial
        self.dias = dados.dias
        self.dateComponents.timeZone = TimeZone.current
        self.dateComponents.calendar = Calendar.current
        verificarDiaAtual()
        dictParaStruct()
    }
    
    public func salvarDados(){
        atualizarStructParaDict()
        dados.atualizarDias(dias: self.dias)
    }
    
    private func atualizarStructParaDict(){
        for dia in diasModel {
            var tarefasBool: [Bool] = []
            for tarefa in dia.tarefas {
                tarefasBool.append(tarefa.concluida)
            }
            self.dias[dia.numero] = tarefasBool
        }
    }
    
    private func dictParaStruct(){
        for dia in self.dias.keys {
            diasModel.append(.init(dia: dia, tarefas: dias[dia] ?? [false]))
        }
    }
    
    private func verificarDiaAtual(){
        let diaAtualCultivo: Int = dateComponents.calendar!.numberOfDaysBetween(dataInicial, to: Date())
        print(dias)
        if diaAtualCultivo > dias.keys.count {
            while dias.count < diaAtualCultivo {
                let tarefasNovoDia = designarTarefas(dia: dias.count + 1)
                dias[dias.count + 1] = tarefasNovoDia
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
