//
//  DiarioView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct DiarioView: View {
    
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
        if vm.cultivoIniciado {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 5) {
                    ForEach(vm.dias, id: \.numero) { dia in
                        GridCellPlantaView(vm: vm, numeroDia: dia.numero)
                    }
                }
            }
        }
        else {
            CardPlantaInicioView(vm: vm, title: "Começar a cuidar", subtitle: "do girassol", imageIcone: "camera.macro")
        }
    }
}
