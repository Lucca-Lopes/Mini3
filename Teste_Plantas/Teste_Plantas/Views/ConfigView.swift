//
//  ConfigView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct ConfigView: View {
    
    var body: some View {
        VStack{
            BotaoConfigAprenda(nextView: SobreView(), nomeIcone: "person.circle", textoBotao: "Sobre nós")
            
            BotaoConfigAprenda(nextView: PrivacidadeView(), nomeIcone: "lock.circle", textoBotao: "Política de Privacidade")
            
            BotaoConfigAprenda(nextView: DireitosView(), nomeIcone: "c.circle", textoBotao: "Direitos Autorais")
        }
        .navigationTitle("Informações")
        .navigationBarTitleDisplayMode(.automatic)
    }
}


//struct ConfigView_Previews: PreviewProvider {
//    static var previews: some View {
//        ConfigView()
//    }
//}
