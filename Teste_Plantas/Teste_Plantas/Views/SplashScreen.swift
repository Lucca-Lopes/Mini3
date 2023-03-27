//
//  SplashScreen.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 25/03/23.
//

import SwiftUI

struct SplashScreen: View {
    @State private var showHomeView = false
    @State var scale = 0.6
    @State var opacity = 0.6
    
    var body: some View {
        if showHomeView {
            HomeView()
        } else {
            VStack(){
                Image("girassol")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                Text("Naturee")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(Color(red: 0.875, green: 0.651, blue: 0.482))
            }
            .scaleEffect(scale)
            .opacity(opacity)
            .onAppear{
                withAnimation(
                    .easeIn(duration: 2)){
                        self.scale = 1.0
                        self.opacity = 1.0
                    }
                withAnimation(Animation.linear.delay(2)) {
                    showHomeView = true
                }
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        SplashScreen()
//    }
//}
