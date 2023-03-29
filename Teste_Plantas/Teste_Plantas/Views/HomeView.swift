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
                BotaoHome(screenHeight: screenHeight, screenWidth: screenWidth, nextView: DiarioView(), nomeIcone: "book.fill", textoBotao: "Diário")
                .padding(.vertical, 50)
                BotaoHome(screenHeight: screenHeight, screenWidth: screenWidth, nextView: AprendaCuidarView(), nomeIcone: "camera.macro", textoBotao: "Aprenda a cuidar")
            }
            .toolbar{
                ToolbarItem {
                    Text("Plantee")
                        .font(.system(size: 32))
                        .fontWeight(.heavy)
                        .frame(width: screenWidth * 0.715, alignment: .center)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: {
                        ConfigView()
                    }, label: {
                        Image(systemName: "info.circle")
                    })
                }
            }
//            .navigationTitle("Naturee")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}
