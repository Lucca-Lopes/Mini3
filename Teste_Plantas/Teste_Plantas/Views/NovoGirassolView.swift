//
//  NovoGirassolView.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 10/04/23.
//

import SwiftUI
import Combine

struct NovoGirassolView: View {
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    @State var textFieldText: String = ""
    
    @ObservedObject var vm: ViewModel
    
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
           
            TextField("Nome do Girassol", text: $textFieldText, prompt: Text("Nome do Girassol").font(.system(size: 20, weight: .bold, design: .rounded)).foregroundColor(Color("corTextoTextfield")))
                .autocorrectionDisabled(true)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(Color("corTextoTextfield"))
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.vertical, 20)
                .background(Color("corFundoTextfield").cornerRadius(12))
                .onReceive(Just(textFieldText)) { _ in
                        if textFieldText.count > 14 {
                            textFieldText = String(textFieldText.prefix(14))
                        }
                    }
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
        .tint(.blue)
        .foregroundColor(Color("corFundoBotao"))
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
                    vm.girassois.append(GirassolModel(nome: self.textFieldText))
                    vm.salvarDados()
                    dismiss.callAsFunction()
                } label: {
                    Text("OK")
                        .font(.custom("Purple Smile", size: 24))
                        .foregroundColor(Color("corFundoBotao"))
                }
            }
        }
    }
}
