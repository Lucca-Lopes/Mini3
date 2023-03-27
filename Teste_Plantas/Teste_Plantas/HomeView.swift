//
//  HomeView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Button(action: {
                ConfigView()
            }, label: {
                Image(systemName: "info.circle")
            })
            
            Button(action: {
                MiniGameView()
            }, label: {
                Text("Mini Games")
                    .font(.system(size: 20))
                    .frame(width: 100, height: 100)
                    .padding(20)
            })
            
           Button(action: {
               DiarioView()
           }, label: {
               Text("Diario da Planta")
                   .font(.system(size: 20))
                   .frame(width: 100, height: 100)
                   .padding(20)
           })
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
