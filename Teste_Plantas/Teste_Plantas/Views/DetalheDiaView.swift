//
//  DetalheDiaView.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 28/03/23.
//

import SwiftUI

struct DetalheDiaView: View {
    
    @ObservedObject var vm: ViewModel
    @Environment(\.dismiss) private var dismiss
    
    let indexGirassol: Int
    let indexDia: Int
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(vm.girassois[indexGirassol].dias[indexDia].tarefas, id: \.hashValue){ tarefa in
                    TarefaRowView(vm: vm, indexGirassol: indexGirassol, indexDia: indexDia, indexTarefa: vm.girassois[indexGirassol].dias[indexDia].tarefas.firstIndex(of: tarefa) ?? 0, tarefa: tarefa)
                }
            }
        }
        .navigationBarBackButtonHidden(true)
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
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss.callAsFunction()
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 23, weight: .heavy))
                        .foregroundColor(Color("corFundoBotao"))
                })
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: {
                    AprendaCuidarView()
                }, label: {
                    Image("botaoInterrogacao")
                        .resizable()
                        .frame(width: vm.screenWidth * 0.1, height: vm.screenWidth * 0.1)
                        .accessibilityLabel(Text("Aprenda a cuidar"))
                })
            }
        }
    }
}
