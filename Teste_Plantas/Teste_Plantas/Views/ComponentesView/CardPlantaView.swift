//
//  CardPlantaView.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 27/03/23.
//

import Foundation
import SwiftUI


struct CardPlantaView: View {
    
    let cardPlantaModel: CardPlantaModel
    let destination: AnyView
    
    let cardWidth = UIScreen.main.bounds.width / 2.5
    let cardHeight = UIScreen.main.bounds.width / 1.5
    
    var body: some View {
        NavigationLink(destination: destination) {
            VStack {
                cardPlantaModel.imagem
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                
                
                Rectangle()
                    .frame(width: 1, height: 1)
                    .foregroundColor(Color.black)
                
                
                //            Text(cardPlantaModel.nome)
                //                .font(.title)
                //                .fontWeight(.bold)
                
                Text("Dia - \(cardPlantaModel.dia)")
                    .font(.system(size:25))
                    .foregroundColor(.black)
                    .bold()
                
            }
            .frame(width: cardWidth, height: cardHeight)
            .padding(.vertical, 10)  //Espaço em relação a borda
            .padding(.horizontal, 10)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
    }
}
