//
//  DiarioView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct DiarioView: View {
    var body: some View {
        NavigationView {
            CardPlantaInicioView(title: "Começar cuidar",
                                 subtitle: "do girassol",
                                 imageIcone: "camera.macro")
        }
    }
}

//struct DiarioView_Previews: PreviewProvider {
//    static var previews: some View {
//        DiarioView()
//    }
//}
