//
//  BotaoConfigAprenda.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 28/03/23.
//

import SwiftUI

struct BotaoConfigAprenda<TargetView: View>: View {
    
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    let nextView: TargetView
    let nomeIcone: String
    let textoBotao: String
    
    var body: some View {
        NavigationLink(destination: {
            nextView
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(Color("corFundoBotao"))
                    .shadow(radius: 4, x: 0, y: 4)
                HStack {
                    Image(systemName: nomeIcone)
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(Color("corTexto"))
                        .padding(.horizontal)
                    Text(textoBotao)
                        .font(.custom("Purple Smile", size: 32))
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color("corTexto"))
                    Spacer()
                    Image(systemName: "chevron.right")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(Color("corTexto"))
                }
                .padding()
            }
        })
        .padding(30)
    }
}
