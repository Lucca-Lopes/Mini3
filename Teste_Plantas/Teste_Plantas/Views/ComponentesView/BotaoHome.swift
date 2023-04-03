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
    let imagemWidth: CGFloat
    let imagemHeight: CGFloat
    let tamanhoFonte: CGFloat
    
    var body: some View {
        NavigationLink(destination: {
            nextView
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: screenWidth * 0.85, height: screenHeight * 0.25, alignment: .center)
                    .shadow(radius: 4, x: 0, y: 4)
                    .foregroundColor(Color("corFundoBotao"))
                    
                HStack {
                    Image(nomeIcone)
                        .resizable()
                        .frame(width: imagemWidth, height: imagemHeight, alignment: .center)
                        .padding(.leading, 40)
                        .foregroundColor(.black)
                    Spacer()
                    Text(textoBotao)
                        .font(.custom("Purple Smile", size: tamanhoFonte))
                        .kerning(0.5)
                        .padding(.trailing, 35)
                        .foregroundColor(Color("corTexto"))
                    Spacer()
                }
            }
        })
    }
}
