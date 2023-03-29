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
        self.videoPlayer = AVPlayer(url: Bundle.main.url(forResource: nomeVideo, withExtension: "mp4")!)
    }
        
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    VideoPlayer(player: videoPlayer)
                }
                .onAppear() {
                    videoPlayer.play()
                }
                    
                VStack {
                    Text(textoDescricao)
                        .frame(width: screenWidth * 0.6, alignment: .center)
                        .font(.system(size: 26, weight: .semibold))
                        .padding(.trailing, 20)
                        .foregroundColor(.black)
                }
            }
        }
        .frame(width: 300, height: 500)
        .background(Color.gray.opacity(0.5))
        .cornerRadius(26)
    }
}
