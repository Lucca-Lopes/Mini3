//
//  DiarioView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct DiarioView: View {
    
//    @ObservedObject var vm = ViewModel()
    let diasModel: [CardPlantaModel] = [.init(dia: 1, tarefas: [false, true]), .init(dia: 2, tarefas: [true]), .init(dia: 3, tarefas: [true])]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 5) {
                ForEach(diasModel, id: \.dia) { dia in
                    CardPlantaView(cardPlantaModel: dia)
//                    CardPlantaView(cardPlantaModel: planta)
                }
            }
//            BotaoPadraoView(
//                action: {
//                    print("Botão personalizado foi pressionado.")
//                },
//                title: "Clique aqui",
//                foregrounColor: .white,
//                font: .system(size: 18),
//                padding: 10,
//                backgroundColor: .blue,
//                cornerRadius: 10
//            )
            
//            VStack {
//                NavigationLinkPadrao(destination: DiarioView(),
//                                     label: Text("Clique Na Navigation"),
//                                     foregroundColor: .red,
//                                     fontSize: 24)
//            }
        }
    }
}

//struct DiarioView_Previews: PreviewProvider {
//    static var previews: some View {
//        DiarioView()
//    }
//}
