//
//  CardPlantaInicioView.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 28/03/23.
//

import SwiftUI

struct CardPlantaInicioView: View {
    let title: String
    let subtitle: String
    let imageIcone: String
    
    
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        
        ZStack {
            VStack {
                Text(title)
                    .font(.system(size: 32, weight: .semibold))
                    .padding(.top, -210)
                
                Text(subtitle)
                    .font(.system(size: 32, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding(.top, -190)
            }
            
            VStack {
                Image(systemName: imageIcone)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(screenWidth * 0.25)
                    .foregroundColor(Color.gray)
            }
            
            Spacer ()
            
            VStack {
                Spacer()
                BotaoPadraoView(
                    action:{
                        NavigationLink(destination: PlantaView()) {
                            
                        }
                    },
                    title: "Plantar",
                    foregrounColor: .black,
                    font: .system(size: 18, weight: .semibold),
                    padding: 18,
                    backgroundColor: (Color.gray.opacity(0.5)),
                    cornerRadius: 26,
                    width: 240,
                    height: 70)
            }
            .frame(height: 450)
            
        }
        .frame(width: 300, height: 500)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(26)
    }
}



struct CardPlantaInicioView_Previews: PreviewProvider {
    static var previews: some View {
        CardPlantaInicioView(title: "Começar a cuidar",
                             subtitle: "do girassol!",
                             imageIcone: "camera.macro")
    }
}

