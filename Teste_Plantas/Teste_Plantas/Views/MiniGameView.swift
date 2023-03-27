//
//  MiniGameView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct MiniGameView: View {
    var body: some View {
        VStack{
            NavigationLink(destination:{
                ContentView() //chamar tela certa
            }, label: {
                Text("Rega")
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
                ContentView() //chamar tela certa
            }, label: {
                Text("Sol")
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
                ContentView() //chamar tela certa
           }, label: {
               Text("Saúde")
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

struct MiniGameView_Previews: PreviewProvider {
    static var previews: some View {
        MiniGameView()
    }
}
