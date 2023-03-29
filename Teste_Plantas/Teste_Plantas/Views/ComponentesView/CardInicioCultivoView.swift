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
    let subtitle: String
    let imageIcone: String
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack {
            VStack {
                Text(title)
                    .font(.system(size: 32, weight: .semibold))
                    .padding(.top, -210)
                
                Text(subtitle)
                    .font(.system(size: 32, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .padding(.top, -190)
            }
            
            VStack {
                Image(systemName: imageIcone)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(screenWidth * 0.25)
                    .foregroundColor(Color.gray)
            }
            
            Spacer ()
            
            VStack {
                Spacer()
                NavigationLink(destination: PlantaView()) {
                    Text("Plantar")
                        .foregroundColor(.black)
                        .font(.title)
                        .padding(40)
                        .frame(width: 200, height: 60)
                        .background(.gray)
                        .cornerRadius(15)
                }.simultaneousGesture(TapGesture().onEnded{
                    vm.iniciarCultivo(cultivoIniciado: true)
                })
                
            }
            .frame(height: 450)
            
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
