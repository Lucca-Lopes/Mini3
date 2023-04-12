//
//  TarefaRowView.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 28/03/23.
//

import SwiftUI

struct TarefaRowView: View {
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    @ObservedObject var vm: ViewModel
    
    let indexGirassol: Int
    let indexDia: Int
    let indexTarefa: Int
    let tarefa: TarefaModel
    
    var body: some View {
        Button {
            vm.atualizarTarefa(indexGirassol: indexGirassol, indexDia: indexDia, indexTarefa: indexTarefa)
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color("corFundoBotao"))
                    .padding(.vertical, -10)
                HStack {
                    Text(tarefa.titulo)
                        .font(.custom("Purple Smile", size: 32))
                        .fontWeight(.regular)
                        .foregroundColor(Color("corTexto"))
                        .multilineTextAlignment(.leading)
                        .padding(20)
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: screenWidth * 0.2, height: screenHeight * 0.1)
                            .foregroundColor(vm.girassois[indexGirassol].dias[indexDia].tarefas[indexTarefa].concluida ? Color("corTexto") : Color("corFundoTriste"))
                            .shadow(radius: 4, x: 0, y: 4)
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 10)
//                                    .stroke(Color("corFundoTriste"),
//                                            lineWidth: 1)
//                                    .shadow(radius: 4, x: 0, y: 4)
//                                    .clipShape(
//                                        RoundedRectangle(cornerRadius: 10)
//                                    )
//                                    .shadow(color: Color.white, radius: 4, x: 0, y: -4)
//                                    .clipShape(
//                                        RoundedRectangle(cornerRadius: 10)
//                                    )
//                            )
                        Image(systemName: tarefa.nomeIcone)
                            .font(.system(size: 36))
                            .foregroundColor(Color("corFundoBotao"))
                    }
                    .padding(.horizontal, 20)
                }
            }
            
        }
        .padding(30)
    }
}
