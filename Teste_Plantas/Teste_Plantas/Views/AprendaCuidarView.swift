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
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack{
            BotaoConfigAprenda(nextView: DetalheAprendaCuidarView(nomeView: "Rega", textoDescricao: "O Gira gosta de água mas não muito, regue se a terra estiver muito seca.", nomeVideo: "VideoRega"), nomeIcone: "drop", textoBotao: "Umidade da terra")
            
            BotaoConfigAprenda(nextView: DetalheAprendaCuidarView(nomeView: "Sol", textoDescricao: "O Gira gosta muito de sol, deixe ele em um lugar iluminado.", nomeVideo: "VideoSol"), nomeIcone: "sun.max", textoBotao: "Sol")
            
            BotaoConfigAprenda(nextView: DetalheAprendaCuidarView(nomeView: "Pragas", textoDescricao: "Procure matinhos na terra do Gira. \n\nSe tiver algum, retire para o Gira crescer forte.", nomeVideo: "VideoPragas"), nomeIcone: "ant", textoBotao: "Procure pragas")
        }
        .navigationBarBackButtonHidden(true)
        .background {
            Image("backgroundImage")
                .resizable()
                .ignoresSafeArea()
                .frame(width: screenWidth, height: screenHeight * 1.15, alignment: .center)
        }
        .minimumScaleFactor(0.5)
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Aprenda a cuidar")
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
