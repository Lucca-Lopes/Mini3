//
//  DetalheDiaView.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 28/03/23.
//

import SwiftUI

struct DetalheDiaView: View {
    
    @State var diaModel: DiaModel
    let vm: ViewModel
    
    var body: some View {
        List {
            ForEach(diaModel.tarefas, id: \.hashValue){ tarefa in
                TarefaRowView(tarefa: tarefa, vm: vm)
            }
        }
    }
}
