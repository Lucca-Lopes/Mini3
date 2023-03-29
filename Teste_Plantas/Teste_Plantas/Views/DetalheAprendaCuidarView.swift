//
//  SolView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 28/03/23.
//

import SwiftUI

struct DetalheAprendaCuidarView: View {
    
    let nomeView: String
    let textoDescricao: String
    let nomeVideo: String
    
    var body: some View {
        VStack(alignment: .center) {
            CardAnimationView(textoDescricao: textoDescricao, nomeVideo: nomeVideo)
        }
        .navigationTitle(nomeView)
    }
    
}



//struct SolView_Previews: PreviewProvider {
//    static var previews: some View {
//        SolView()
//    }
//}
