//
//  CardPlantaInicioView.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 28/03/23.
//
//import SwiftUI
//
//struct CardPlantaInicioView: View {
//
//    @ObservedObject var vm: ViewModel
//
//    let title: String
//
//    let screenWidth = UIScreen.main.bounds.width
//    let screenHeight = UIScreen.main.bounds.height
//
//    var body: some View {
//        VStack {
//            Text(title)
//                .font(.system(size: 36, weight: .semibold, design: .rounded))
//                .foregroundColor(Color("corTexto"))
//                .multilineTextAlignment(.center)
//                .padding(.horizontal)
//            Image("girassolFeliz")
//                .resizable()
//                .frame(width: screenWidth * 0.4, height: screenHeight * 0.25)
//                .padding(.top, -20)
//                .padding(.bottom, 50)
//            Button(action: {
//                vm.iniciarCultivo(cultivoIniciado: true)
//
//            }, label: {
//                Text("Plantar")
//                    .font(.custom("Purple Smile", size: 32))
//                    .foregroundColor(Color("corFundoBotao"))
//                    .padding(.horizontal, 40)
//                    .padding(.vertical)
//                    .background(Color("corTexto"))
//                    .cornerRadius(15)
//            })
//        }
//        .frame(width: 300, height: 500)
//        .background(Color("corFundoBotao"))
//        .cornerRadius(25)
//        .shadow(radius: 4, x: 0, y: 4)
//    }
//}
