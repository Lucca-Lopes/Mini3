//
//  DiarioView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct DiarioView: View {
    
    @ObservedObject var vm: ViewModel
    let indexGirassol: Int
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 50), GridItem(.flexible(), spacing: 50)], alignment: .center, spacing: 30) {
                ForEach(vm.girassois[indexGirassol].dias.reversed(), id: \.numero) { dia in
                    GridCellPlantaView(nomeCorFundo: vm.definirCorBotao(nomeImagem: dia.imagem), nomeImagem: dia.imagem, texto: "Dia \(dia.numero)", destino: DetalheDiaView(vm: vm, indexGirassol: indexGirassol, indexDia: vm.girassois[indexGirassol].dias.firstIndex(of: dia) ?? 0))
                        .accessibilityLabel(Text("Dia \(dia.numero), \(dia.imagem)"))
                    
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
                .accessibilityLabel(Text(""))
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
}
