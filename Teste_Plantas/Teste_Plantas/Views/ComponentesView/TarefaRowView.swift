//
//  TarefaRowView.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 28/03/23.
//

import SwiftUI

struct TarefaRowView: View {
    
    @ObservedObject var vm: ViewModel
    
    let numeroDia: Int
    let indexTarefa: Int
    
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        Button {
            vm.atualizarTarefa(numeroDia: numeroDia, indexTarefa: indexTarefa)
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color("corFundoBotao"))
                HStack {
                    Text(vm.dias[numeroDia - 1].tarefas[indexTarefa].titulo)
                        .font(.custom("Purple Smile", size: 32))
                        .fontWeight(.regular)
                        .foregroundColor(Color("corTexto"))
                        .multilineTextAlignment(.leading)
                        .padding(20)
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: screenWidth * 0.2, height: screenHeight * 0.1)
                            .shadow(radius: 4, x: 0, y: 4)
                            .foregroundColor(vm.dias[numeroDia - 1].tarefas[indexTarefa].concluida ? Color("corTexto") : Color("corFundoTriste"))
                        Image(systemName: vm.definirIconeTarefa(numeroDia: numeroDia, indexTarefa: indexTarefa))
                            .font(.system(size: 36))
                            .foregroundColor(Color("corFundoBotao"))
                    }
                    .padding(20)
                }
            }
            
        }
        .padding(30)
    }
}

//struct TarefaRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TarefaRowView()
//    }
//}
