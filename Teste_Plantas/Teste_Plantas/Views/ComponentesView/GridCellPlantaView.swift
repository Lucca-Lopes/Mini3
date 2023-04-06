//
//  CardPlantaView.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 27/03/23.
//

import Foundation
import SwiftUI


struct GridCellPlantaView<Destino: View>: View {
        
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    let nomeCorFundo: String
    let nomeImagem: String
    let texto: String
    let destino: Destino
    
    var body: some View {
        NavigationLink(destination: destino) {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color(nomeCorFundo))
                    .shadow(radius: 4, x: 0, y: 4)
                VStack {
                    Spacer()
                    Image(nomeImagem)
                        .resizable()
                        .frame(width: screenWidth * 0.4, height: screenHeight * 0.25)
                        .padding(.bottom, -10)
                    Rectangle()
                        .frame(width: screenWidth * 0.44, height: screenHeight * 0.0025)
                        .foregroundColor(.black)
                    Text(texto)
                        .font(.system(size: 28, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top, -10)
                        .padding(7.5)
                }
            }
        }
    }
}
