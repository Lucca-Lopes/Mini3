//
//  CardPlantaView.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 27/03/23.
//

import Foundation
import SwiftUI


struct GridCellPlantaView: View {
    
    @ObservedObject var vm: ViewModel
    
    let numeroDia: Int
    
    var body: some View {
        NavigationLink(destination: DetalheDiaView(vm: vm, numeroDia: numeroDia)) {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(vm.definirCorBotao(numeroDia: numeroDia)))
                    .shadow(radius: 4, x: 0, y: 4)
                VStack {
                    Spacer()
                    Image(vm.dias[numeroDia - 1].imagem)
                        .resizable()
                        .frame(width: vm.screenWidth * 0.4, height: vm.screenHeight * 0.25)
                        .padding(.bottom, -10)
                    Rectangle()
                        .frame(width: vm.screenWidth * 0.44, height: vm.screenHeight * 0.0025)
                        .foregroundColor(.black)
                    Text("Dia \(vm.dias[numeroDia - 1].numero)")
                        .font(.custom("Purple Smile", size: 28))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top, -10)
                    .padding(7.5)
                }
            }
        }
    }
}
