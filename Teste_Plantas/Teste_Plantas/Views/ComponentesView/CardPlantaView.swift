//
//  CardPlantaView.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 27/03/23.
//

import Foundation
import SwiftUI


struct CardPlantaView: View {
    
    let diaModel: DiaModel
    let vm: ViewModel
    
    let cardWidth = UIScreen.main.bounds.width / 2.5
    let cardHeight = UIScreen.main.bounds.width / 2.5
    
    var body: some View {
        NavigationLink(destination: DetalheDiaView(diaModel: diaModel, vm: vm)) {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                VStack {
                    Image(diaModel.imagem)
                        .padding()
                    Text("Dia \(diaModel.numero)")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
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
