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
    
    var body: some View {
        VStack(alignment: .center) {
            CardAnimationView(textoDescricao: textoDescricao, nomeVideo: nomeVideo)
        }
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
                    .font(.custom("Purple Smile", size: 32))
                    .foregroundColor(Color("corFundoBotao"))
            }
        }

    }
    
}



//struct SolView_Previews: PreviewProvider {
//    static var previews: some View {
//        SolView()
//    }
//}
