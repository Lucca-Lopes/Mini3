//
//  CardAnimationView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 28/03/23.
//

import SwiftUI
import AVKit

struct CardAnimationView: View {
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    let textoDescricao: String
    let nomeVideo: String
    @State var videoPlayer: AVPlayer
    
    init(textoDescricao: String, nomeVideo: String) {
        self.textoDescricao = textoDescricao
        self.nomeVideo = nomeVideo
        self.videoPlayer = AVPlayer(url: Bundle.main.url(forResource: nomeVideo, withExtension: "mov")!)
        self.videoPlayer.play()
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("corFundoBotao"))
                .shadow(radius: 4, x: 0, y: 4)
            VStack {
                PlayerView(player: $videoPlayer)
                    .ignoresSafeArea()
                    .frame(height: screenHeight * 0.419)
                    .cornerRadius(25)
                    .padding(20)
                    
                Spacer()
                Text(textoDescricao)
                    .font(.system(size: 22, weight: .semibold, design: .rounded))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("corTexto"))
                    .padding(.top, -30)
                    .padding(20)
                Spacer()
            }
        }
        .padding(30)
    }
}


