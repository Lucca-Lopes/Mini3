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
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 5) {
                ForEach(vm.diasModel, id: \.numero) { dia in
                    CardPlantaView(diaModel: dia, vm: vm)
                }
            }
        }
    }
}
