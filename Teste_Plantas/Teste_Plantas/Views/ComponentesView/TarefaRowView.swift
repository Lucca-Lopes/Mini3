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
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: screenWidth * 0.8, height: screenHeight * 0.15, alignment: .center)
                    .foregroundColor(Color(.lightGray))
                HStack {
                    Text(vm.dias[numeroDia - 1].tarefas[indexTarefa].titulo)
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding()
                    Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: screenWidth * 0.2, height: screenHeight * 0.1)
                            .foregroundColor(vm.dias[numeroDia - 1].tarefas[indexTarefa].concluida ? .green : .red)
                        Image(systemName: "sun.max")
                            .resizable()
                            .frame(width: screenWidth * 0.155, height: screenHeight * 0.08)
                        
                    }
                    .padding()
                }
            }
            
        }
    }
}

//struct TarefaRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TarefaRowView()
//    }
//}
