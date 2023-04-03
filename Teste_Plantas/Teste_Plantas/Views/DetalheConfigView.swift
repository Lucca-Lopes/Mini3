//
//  SobreView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct DetalheConfigView: View {
    
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    let nomeView: String
    let textoDescricao: String
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Text(textoDescricao)
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .foregroundColor(Color("corTexto"))
                .frame(width: screenWidth * 0.7)
                .background{
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color("corFundoBotao"))
                        .frame(width: screenWidth * 0.8)
                        .padding(.vertical, -30)
                }
                .padding(.top, 80)
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .background {
            Image("backgroundImage")
                .resizable()
                .ignoresSafeArea()
                .frame(width: screenWidth, height: screenHeight * 1.15, alignment: .center)
        }
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text(nomeView)
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
