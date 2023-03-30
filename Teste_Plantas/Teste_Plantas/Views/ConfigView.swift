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
            BotaoConfigAprenda(nextView: DetalheConfigView(nomeView: "Sobre nós", textoDescricao: "Gira é um app..."), nomeIcone: "person.circle", textoBotao: "Sobre nós")
            
            BotaoConfigAprenda(nextView: DetalheConfigView(nomeView: "Política de Privacidade", textoDescricao: "Não serão coletados dados sensíveis de nossos usuários. Não compartilhamos dados pessoais com terceiros. Apesar disso, é possível que o façamos para cumprir alguma determinação legal ou regulatória, ou ainda, para cumprir alguma ordem expedida por autoridade pública. Quaisquer tipos de dados que por ventura precisem ser coletados só serão coletados desde que sejam fornecidos com o consentimento do usuário. Conforme Lei de Proteção de Dados Pessoais, a coleta de dados e as atividades de tratamento delas decorrentes serão informadas aos usuários do aplicativo."), nomeIcone: "lock.circle", textoBotao: "Política de Privacidade")
            
            BotaoConfigAprenda(nextView: DetalheConfigView(nomeView: "Direitos Autorais", textoDescricao: "©2023Gira. Todos os direitos reservados a seus criadores: Mari Higashi, Caroline Stelitano, Lucca Lopes e Higor Lo Castro."), nomeIcone: "c.circle", textoBotao: "Direitos Autorais")
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
                    .font(.custom("Purple Smile", size: 24))
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
