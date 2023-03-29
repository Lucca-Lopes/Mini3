//
//  MiniGameView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct AprendaCuidarView: View {
    var body: some View {
        VStack{
            BotaoConfigAprenda(nextView: DetalheAprendaCuidarView(nomeView: "Rega", textoDescricao: "Seu girassol precisa de água", nomeVideo: "videoSol"), nomeIcone: "drop", textoBotao: "Umidade da terra") //chamar telas certas
            
            BotaoConfigAprenda(nextView: DetalheAprendaCuidarView(nomeView: "Sol", textoDescricao: "Seu girassol adora sol!", nomeVideo: "videoSol"), nomeIcone: "sun.max", textoBotao: "Sol")
            
            BotaoConfigAprenda(nextView: DetalheAprendaCuidarView(nomeView: "Pragas", textoDescricao: "Tire as pragas do seu girassol", nomeVideo: "videoSol"), nomeIcone: "ant", textoBotao: "Procure pragas") //chamar telas certas
        }
        .navigationTitle("Aprenda a cuidar")
        .navigationBarTitleDisplayMode(.automatic)
    }
}


//struct AprendaCuidarView_Previews: PreviewProvider {
//    static var previews: some View {
//        AprendaCuidarView()
//    }
//}
