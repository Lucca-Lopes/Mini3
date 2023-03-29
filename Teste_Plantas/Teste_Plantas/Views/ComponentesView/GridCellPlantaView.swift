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
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                VStack {
                    Image(vm.dias[numeroDia - 1].imagem)
                        .resizable()
                        .frame(width: vm.screenWidth * 0.25, height: vm.screenHeight * 0.25)
                        
//                        .padding()
                    Rectangle()
                        .frame(width: vm.screenWidth * 0.44, height: vm.screenHeight * 0.001)
                        .foregroundColor(.black)
//                        .padding(.top)
                    Text("Dia \(vm.dias[numeroDia - 1].numero)")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(2.5)
                    //            cardPlantaModel.imagem
                    //                .resizable()
                    //                .aspectRatio(contentMode: .fill)
                    //                .frame(width: cardWidth, height: cardHeight)
                    //                .clipShape(Circle())
                    //                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    //                .shadow(radius: 7)
                    //            Text(cardPlantaModel.nome)
                    //                .font(.title)
                    //                .fontWeight(.bold)
                    //            Text("Dia - \(cardPlantaModel.dia)")
                    //                .font(.subheadline)
                    //                .foregroundColor(.gray)
                }
                .padding(.vertical, 10)  //Espaço em relação a borda
                
        //        .background(Color.white)
    //            .cornerRadius(10)
            
            }
        }
    }
}
