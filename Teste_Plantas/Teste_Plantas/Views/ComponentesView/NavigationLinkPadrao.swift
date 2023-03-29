//
//  NavigationLinkPadrao.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 28/03/23.
//

import SwiftUI

struct NavigationLinkPadrao<TargetView: View>: View {
    
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    let nextView: TargetView
    let textoBotao: String

    var body: some View {
        NavigationLink(destination: {
            nextView
        }, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: screenHeight * 0.1, alignment: .center)
                    .padding(.horizontal)
                    .foregroundColor(.gray)

                HStack {
                    Text(textoBotao)
                        .frame(width: screenWidth * 0.6, alignment: .center)
                        .font(.system(size: 26, weight: .semibold))
                        .padding(.trailing, 20)
                        .foregroundColor(.black)
                }
            }
            .padding(.vertical, -5)
        })
    }
}



//
//import SwiftUI
//
//struct BotaoConfigAprenda<TargetView: View>: View {
//
//    let screenWidth = UIScreen.main.bounds.size.width
//    let screenHeight = UIScreen.main.bounds.size.height
//    let nextView: TargetView
//    let nomeIcone: String
//    let textoBotao: String
//
//    var body: some View {
//        NavigationLink(destination: {
//            nextView
//        }, label: {
//            ZStack{
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(height: screenHeight * 0.2, alignment: .center)
//                    .padding(.horizontal)
//                    .foregroundColor(.green)
//
//                HStack {
//                    Image(systemName: nomeIcone)
//                        .resizable()
//                        .frame(width: screenWidth * 0.15, height: screenHeight * 0.065)
//                        .padding(.leading, 60)
//                        .foregroundColor(.black)
//                    Spacer()
//                    Text(textoBotao)
//                        .frame(width: screenWidth * 0.6, alignment: .center)
//                        .font(.system(size: 26, weight: .semibold))
//                        .padding(.trailing, 20)
//                        .foregroundColor(.black)
//                }
//            }
//            .padding(.vertical, 20)
//        })
//    }
//}
