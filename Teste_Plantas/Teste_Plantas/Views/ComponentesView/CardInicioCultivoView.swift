//
//  CardPlantaInicioView.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 28/03/23.
//
import SwiftUI

struct CardPlantaInicioView: View {
    
    @ObservedObject var vm: ViewModel
    
    let title: String
//    let subtitle: String
//    let imageIcone: String
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        VStack {
//            VStack {
                Text(title)
                    .font(.system(size: 32, weight: .semibold))
//                    .padding(.top, -210)
                
//                Text(subtitle)
//                    .font(.system(size: 32, weight: .semibold))
//                    .multilineTextAlignment(.center)
//                    .padding(.top, -190)
//            }
            
            VStack {
                Image("girassolFeliz")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(screenWidth * 0.25)
                    .foregroundColor(Color.gray)
            }
            
//            Spacer ()
            
//            VStack {
                Spacer()
            Button(action: {
                vm.iniciarCultivo(cultivoIniciado: true)
                
            }, label: {
                    Text("Plantar")
                        .font(.custom("Purple Smile", size: 32))
                        .foregroundColor(Color("corFundoBotao"))
                        .padding(40)
                        .frame(width: 200, height: 60)
                        .background(.gray)
                        .cornerRadius(15)
                })
//            }
//            .frame(height: 450)
            
        }
        .frame(width: 300, height: 500)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(26)
    }
}



//struct CardPlantaInicioView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardPlantaInicioView(title: "Começar a cuidar",
//                             subtitle: "do girassol!",
//                             imageIcone: "camera.macro")
//    }
//}
