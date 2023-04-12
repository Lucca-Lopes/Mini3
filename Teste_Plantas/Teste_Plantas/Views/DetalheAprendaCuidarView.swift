//
//  SolView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 28/03/23.
//

import SwiftUI

struct DetalheAprendaCuidarView: View {
    
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    let nomeView: String
    let textoDescricao: String
    let nomeVideo: String
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                CardAnimationView(textoDescricao: textoDescricao, nomeVideo: nomeVideo)
            }
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
