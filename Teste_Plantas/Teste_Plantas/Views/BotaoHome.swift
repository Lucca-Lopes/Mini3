//
//  BotaoHome.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 28/03/23.
//

import SwiftUI

struct BotaoHome<TargetView: View>: View {
    
    let screenHeight: CGFloat
    let screenWidth: CGFloat
    let nextView: TargetView
    let nomeIcone: String
    let textoBotao: String
    
    var body: some View {
        NavigationLink(destination: {
            nextView
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: screenHeight * 0.3, alignment: .center)
                    .padding(.horizontal)
                    .foregroundColor(.green)
                    
                HStack {
                    Image(systemName: nomeIcone)
                        .resizable()
                        .frame(width: screenWidth * 0.2, height: screenHeight * 0.075)
                        .padding(.leading, 50)
                        .foregroundColor(.black)
                    Spacer()
                    Text(textoBotao)
                        .frame(width: screenWidth * 0.5, alignment: .center)
                        .font(.system(size: 36))
                        .padding(.trailing, 50)
                        .foregroundColor(.black)
                }
            }
        })
    }
}
