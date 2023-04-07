//
//  NovoGirassolView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 06/04/23.
//

import SwiftUI

struct NovoGirassolView: View {
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    @State var textFieldText: String = ""
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {   
        VStack(spacing: 40) {
            Spacer(minLength: 110)
                .ignoresSafeArea(.keyboard)
            
            Image("girassolFeliz")
                .resizable()
                .frame(width: screenWidth * 0.30, height: screenHeight * 0.18)
                .padding(.top, -120)
                .background{
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(Color("corFundoBotao"))
                        .frame(width: screenWidth * 0.80, height: screenHeight * 0.35)
                }
            
            TextField("Nome do girassol", text: $textFieldText).multilineTextAlignment(.center).frame(height: 30)
                .padding()
                .background(Color("corFundoTextField").cornerRadius(12))
                .ignoresSafeArea(.keyboard)
            
            Spacer(minLength: 5)
                .ignoresSafeArea(.keyboard)
        }
        .padding(.bottom, 130)
        .navigationBarBackButtonHidden(true)
        .background {
            Image("backgroundImage")
                .resizable()
                .frame(width: screenWidth, height: screenHeight * 1.15, alignment: .center)
        }
        .foregroundColor(Color("corTexto"))
        .frame(width: screenWidth * 0.7)
        .ignoresSafeArea(.keyboard)
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Novo Girassol")
                    .font(.custom("Purple Smile", size: 24))
                    .foregroundColor(Color("corFundoBotao"))
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss.callAsFunction()
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 23, weight: .heavy))
                        .foregroundColor(Color("corFundoBotao"))
                })
            }
            ToolbarItem(placement: .navigationBarTrailing){
                Button {
                    print("salvo!")
                } label: {
                    Text("OK")
                        .font(.custom("Purple Smile", size: 24))
                        .foregroundColor(Color("corFundoBotao"))
                }
            }
        }
    }
}
