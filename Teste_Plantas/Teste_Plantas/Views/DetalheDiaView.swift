//
//  DetalheDiaView.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 28/03/23.
//

import SwiftUI

struct DetalheDiaView: View {
    
    @ObservedObject var vm: ViewModel
    
    let numeroDia: Int
    
    var body: some View {
        List {
            ForEach(vm.dias[numeroDia - 1].tarefas, id: \.hashValue){ tarefa in
                TarefaRowView(vm: vm, numeroDia: numeroDia, indexTarefa: vm.dias[numeroDia - 1].tarefas.firstIndex(of: tarefa) ?? 0)
            }
        }
    }
}
