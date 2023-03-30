//
//  ConfigView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct ConfigView: View {
    
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        VStack{
            BotaoConfigAprenda(nextView: SobreView(), nomeIcone: "person.circle", textoBotao: "Sobre nós")
            
            BotaoConfigAprenda(nextView: PrivacidadeView(), nomeIcone: "lock.circle", textoBotao: "Política de Privacidade")
            
            BotaoConfigAprenda(nextView: DireitosView(), nomeIcone: "c.circle", textoBotao: "Direitos Autorais")
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
                Text("Informações")
                    .font(.custom("Purple Smile", size: 32))
                    .foregroundColor(Color("corFundoBotao"))
            }
        }
    }
}


//struct ConfigView_Previews: PreviewProvider {
//    static var previews: some View {
//        ConfigView()
//    }
//}
