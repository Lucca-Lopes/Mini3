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
                NavigationLink(destination: {
                    SobreView()
                }, label: {
                    Text("Sobre nós")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.brown)
                        .frame(width: 200, height: 100)
                        .background(
                            Color.yellow
                                .cornerRadius(10)
                                .shadow(radius: 8)
                            )
                        .padding()
                })
                
                NavigationLink(destination: {
                    PrivacidadeView()
                }, label: {
                    Text("Política de Privacidade")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.brown)
                        .frame(width: 200, height: 100)
                        .background(
                            Color.yellow
                                .cornerRadius(10)
                                .shadow(radius: 8)
                            )
                        .padding()
                })
                
                NavigationLink(destination: {
                    DireitosView()
                }, label: {
                    Text("Direitos Autorais")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(.brown)
                        .frame(width: 200, height: 100)
                        .background(
                            Color.yellow
                                .cornerRadius(10)
                                .shadow(radius: 8)
                            )
                        .padding()
                })
            }
    }
}

//struct ConfigView_Previews: PreviewProvider {
//    static var previews: some View {
//        ConfigView()
//    }
//}
