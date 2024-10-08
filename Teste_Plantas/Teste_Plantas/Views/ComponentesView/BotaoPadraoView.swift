//
//  BotaoPadraoView.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 28/03/23.
//

import SwiftUI

struct BotaoPadraoView: View {
    let action: () -> Void
    let title: String
    let foregrounColor: Color
    let font: Font
    let padding: CGFloat
    let backgroundColor: Color
    let cornerRadius: CGFloat
    
    
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(foregrounColor)
                .font(font)
        }
        .padding(padding)
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
    }
}
