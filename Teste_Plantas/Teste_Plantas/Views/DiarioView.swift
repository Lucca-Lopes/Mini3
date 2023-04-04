//
//  DiarioView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct DiarioView: View {
    
    @ObservedObject var vm = ViewModel()
    
    @Environment(\.dismiss) private var dismiss
    
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
            .navigationBarBackButtonHidden(true)
            .background {
                Image("backgroundImage")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: vm.screenWidth, height: vm.screenHeight * 1.15, alignment: .center)
            }
            .minimumScaleFactor(0.5)
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Diário")
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
            }
        }
        else {
            VStack {
                CardPlantaInicioView(vm: vm, title: "Comece a cuidar do Gira!")
                    .padding(.top)
                Spacer()
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
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss.callAsFunction()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 23, weight: .heavy))
                            .foregroundColor(Color("corFundoBotao"))
                    })
                }
            }
        }
    }
}
