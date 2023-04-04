//
//  HomeView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct HomeView: View {
    
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        NavigationView {
            VStack{
                BotaoHome(screenHeight: screenHeight, screenWidth: screenWidth, nextView: DiarioView(), nomeIcone: "girassolOculos", textoBotao: "Diário", imagemWidth: screenWidth * 0.4, imagemHeight: screenHeight * 0.25, tamanhoFonte: 36)
                .padding(.vertical, 50)
                BotaoHome(screenHeight: screenHeight, screenWidth: screenWidth, nextView: AprendaCuidarView(), nomeIcone: "girassolAgua", textoBotao: "Aprenda a cuidar", imagemWidth: screenWidth * 0.4, imagemHeight: screenHeight * 0.25, tamanhoFonte: 30)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.large)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Gira")
                        .font(.custom("Purple Smile", size: 40))
                        .fontWeight(.regular)
                        .foregroundColor(Color("corFundoBotao"))
                        .padding(.leading, 20)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: {
                        ConfigView()
                    }, label: {
                        Image("botaoInfo")
                            .resizable()
                            .frame(width: screenWidth * 0.1, height: screenWidth * 0.1)
                            .padding(.trailing, 20)
                    })
                }
            }
            .background {
                Image("backgroundImage")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(width: screenWidth, height: screenHeight * 1.15, alignment: .center)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
