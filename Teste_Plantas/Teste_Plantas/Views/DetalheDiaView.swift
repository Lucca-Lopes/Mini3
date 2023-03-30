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
        ScrollView {
            LazyVStack {
                ForEach(vm.dias[numeroDia - 1].tarefas, id: \.hashValue){ tarefa in
                    TarefaRowView(vm: vm, numeroDia: numeroDia, indexTarefa: vm.dias[numeroDia - 1].tarefas.firstIndex(of: tarefa) ?? 0)
                }
            }
        }
        .background {
            Image("backgroundImage")
                .resizable()
                .ignoresSafeArea()
                .frame(width: vm.screenWidth, height: vm.screenHeight * 1.15, alignment: .center)
        }
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Tarefas do dia")
                    .font(.custom("Purple Smile", size: 24))
                    .foregroundColor(Color("corFundoBotao"))
            }
        }
    }
}
