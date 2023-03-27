//
//  HomeView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    NavigationLink(destination: {
                        ConfigView()
                    }, label: {
                        Image(systemName: "info.circle")
                    })
                }
            
                NavigationLink(destination: {
                    MiniGameView()
                }, label: {
                    Text("Aprenda a cuidar do seu girassol!")
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
                    DiarioView()
                }, label: {
                    Text("Diário do Girassol")
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
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
