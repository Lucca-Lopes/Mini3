//
//  MiniGameView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct AprendaCuidarView: View {
    
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        VStack{
            BotaoConfigAprenda(nextView: DetalheAprendaCuidarView(nomeView: "Rega", textoDescricao: "Seu girassol precisa de água", nomeVideo: "videoSol"), nomeIcone: "drop", textoBotao: "Umidade da terra")
            
            BotaoConfigAprenda(nextView: DetalheAprendaCuidarView(nomeView: "Sol", textoDescricao: "Seu girassol adora sol!", nomeVideo: "videoSol"), nomeIcone: "sun.max", textoBotao: "Sol")
            
            BotaoConfigAprenda(nextView: DetalheAprendaCuidarView(nomeView: "Pragas", textoDescricao: "Tire as pragas do seu girassol", nomeVideo: "videoSol"), nomeIcone: "ant", textoBotao: "Procure pragas") 
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
                Text("Aprenda a cuidar")
                    .font(.custom("Purple Smile", size: 32))
                    .foregroundColor(Color("corFundoBotao"))
            }
        }
    }
}


//struct AprendaCuidarView_Previews: PreviewProvider {
//    static var previews: some View {
//        AprendaCuidarView()
//    }
//}
