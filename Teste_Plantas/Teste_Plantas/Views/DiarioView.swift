//
//  DiarioView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct DiarioView: View {
    
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
        if vm.cultivoIniciado {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 50), GridItem(.flexible(), spacing: 50)], alignment: .center, spacing: 30) {
                    ForEach(vm.dias, id: \.numero) { dia in
                        GridCellPlantaView(vm: vm, numeroDia: dia.numero)
                    }
                }
                .padding(20)
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
                    Text("Diário")
                        .font(.custom("Purple Smile", size: 24))
                        .foregroundColor(Color("corFundoBotao"))
                }
            }
        }
        else {
            CardPlantaInicioView(vm: vm, title: "Começar a cuidar", subtitle: "do girassol", imageIcone: "camera.macro")
        }
        
    }
}
