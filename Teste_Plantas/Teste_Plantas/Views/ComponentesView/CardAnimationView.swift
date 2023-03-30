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
    var videoPlayer: AVPlayer
    
    init(textoDescricao: String, nomeVideo: String) {
        self.textoDescricao = textoDescricao
        self.nomeVideo = nomeVideo
        self.videoPlayer = AVPlayer(url: Bundle.main.url(forResource: nomeVideo, withExtension: "mov")!)
    }
        
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("corFundoBotao"))
                .shadow(radius: 4, x: 0, y: 4)
            VStack {
                    VideoPlayer(player: videoPlayer)
                        .frame(height: screenHeight * 0.419)
                    //width: screenWidth * 0.799,
                        .cornerRadius(25)
                        .padding(20)
                        .onAppear() {
                            videoPlayer.play()
                        }
                    Spacer()
                    Text(textoDescricao)
//                        .frame(width: screenWidth * 0.6, alignment: .center)
                        .font(.system(size: 22, weight: .semibold, design: .rounded))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("corTexto"))
                        .padding(.top, -30)
                        .padding(20)
                Spacer()
            }
        }
        .padding(30)
//        .frame(width: 300, height: 500)
//        .background(Color.gray.opacity(0.5))
//        .cornerRadius(26)
    }
}
