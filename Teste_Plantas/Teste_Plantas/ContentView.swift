//
//  ContentView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 24/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var scale = 0.8
    
    var body: some View {
        VStack {
            Image(systemName: "arrow.right")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .padding(20)
                .background(Color.green)
                .foregroundColor(Color.black)
                .clipShape(Circle())
//            criando a animacão de pulsar em cima do circulo
                .overlay(
                    Circle()
                        .stroke(Color.gray)
                        .scaleEffect(scale)
                        .opacity(Double(2 - scale)) //conforme aumenta o scale diminui a opacidade
                        .animation(
                            Animation.easeOut(duration: 1)
                                .repeatForever(autoreverses: false)
                        
                        )
                )
                
        }.onAppear(
//            self.scale = 1
        )
        
    }
    
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
