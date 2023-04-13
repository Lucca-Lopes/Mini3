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
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color("corFundoBotao"))
                    .shadow(radius: 4, x: 0, y: 4)
                HStack {
                    Text(tarefa.titulo)
                        .frame(height: screenHeight * 0.12)
                        .font(.custom("Purple Smile", size: 32))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("corTexto"))
                        .lineLimit(3)
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: screenWidth * 0.2, height: screenHeight * 0.1)
                            .foregroundColor(vm.girassois[indexGirassol].dias[indexDia].tarefas[indexTarefa].concluida ? Color("corTexto") : Color("corFundoTriste"))
                            .shadow(radius: 4, x: 0, y: 4)
                        Image(systemName: tarefa.nomeIcone)
                            .font(.system(size: 36))
                            .foregroundColor(Color("corFundoBotao"))
                    }
                }
                .padding(20)
            }
        }
        .accessibilityLabel(Text("\(tarefa.titulo), \(vm.girassois[indexGirassol].dias[indexDia].tarefas[indexTarefa].concluida ? "feita" : "não feita")"))
        .padding(30)
    }
}
