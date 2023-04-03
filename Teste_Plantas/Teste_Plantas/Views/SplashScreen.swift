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
    
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        VStack {
            if showHomeView {
                HomeView()
            } else {
                VStack(){
                    Image("girassolFeliz")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                    Text("Gira")
                        .font(.custom("Purple Smile", size: 40))
                        .foregroundColor(Color(.white))
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
        .background{
            Rectangle()
                .ignoresSafeArea()
                .frame(width: screenWidth, height: screenHeight, alignment: .center)
                .foregroundColor(Color("corFundoSplash"))
        }
    }
}
