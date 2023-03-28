//
//  HomeView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                BotaoHome(screenHeight: vm.screenHeight, screenWidth: vm.screenWidth, nextView: DiarioView(), nomeIcone: "book.fill", textoBotao: "Diário")
                .padding(.vertical, 50)
                BotaoHome(screenHeight: vm.screenHeight, screenWidth: vm.screenWidth, nextView: AprendaCuidarView(), nomeIcone: "camera.macro", textoBotao: "Aprenda a cuidar")
            }
            .toolbar{
                ToolbarItem {
                    Text("Plantee")
                        .font(.system(size: 32))
                        .fontWeight(.heavy)
                        .frame(width: vm.screenWidth * 0.715, alignment: .center)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: {
                        ConfigView()
                    }, label: {
                        Image(systemName: "gear.circle")
                    })
                }
            }
//            .navigationTitle("Naturee")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}
