//
//  NavigationLinkPadrao.swift
//  Teste_Plantas
//
//  Created by Higor  Lo Castro on 28/03/23.
//

import SwiftUI

struct NavigationLinkPadrao<Label: View, Destination: View>: View {
    var destination: Destination
    var label: Label
    var foregroundColor: Color
    var fontSize: CGFloat
    
    var body: some View {
        NavigationLink(destination: destination) {
            label
                .foregroundColor(foregroundColor)
                .font(.system(size: fontSize))
        }
    }
}
