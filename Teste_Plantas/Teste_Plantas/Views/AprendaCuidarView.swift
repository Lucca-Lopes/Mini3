//
//  MiniGameView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct AprendaCuidarView: View {
    var body: some View {
        VStack{                     //chamar telas certas
            BotaoConfigAprenda(nextView: SobreView(), nomeIcone: "drop", textoBotao: "Umidade da terra")
            
            BotaoConfigAprenda(nextView: PrivacidadeView(), nomeIcone: "sun.max", textoBotao: "Sol")
            
            BotaoConfigAprenda(nextView: DireitosView(), nomeIcone: "ant", textoBotao: "Procure pragas")
        }
    }
}


//struct MiniGameView_Previews: PreviewProvider {
//    static var previews: some View {
//        MiniGameView()
//    }
//}
