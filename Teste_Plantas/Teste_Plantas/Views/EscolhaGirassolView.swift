//
//  EscolhaGirassolView.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 06/04/23.
//

import SwiftUI

struct EscolhaGirassolView: View {
    
    @ObservedObject var vm = ViewModel()
    
    @State var editando: Bool = false
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.flexible(), spacing: 50), GridItem(.flexible(), spacing: 50)], alignment: .center, spacing: 30) {
                NavigationLink{
                    NovoGirassolView(vm: vm)
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .foregroundColor(Color("corFundoBotao"))
                            .shadow(radius: 4, x: 0, y: 4)
                        VStack {
                            Spacer()
                            Image(systemName: "plus")
                                .font(.system(size: 64, weight: .bold))
                                .foregroundColor(Color("corTexto"))
//                                .bold()
//                                .resizable()
                                .frame(width: vm.screenWidth * 0.4, height: vm.screenHeight * 0.25)
                                .padding(.top, vm.screenHeight * 0.005)
                            Rectangle()
                                .frame(width: vm.screenWidth * 0.44, height: vm.screenHeight * 0.0025)
                                .foregroundColor(.black)
                            Text("Novo")
                                .font(.system(size: 28, design: .rounded))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding(.top, -10)
                                .padding(7.5)
                        }
                    }
                }
                .accessibilityLabel(Text("Criar novo girassol"))
                ForEach(vm.girassois, id: \.nome) { girassol in
                    ZStack {
                        GridCellPlantaView(nomeCorFundo: "corFundoBotao", nomeImagem: "girassolFeliz", texto: girassol.nome, destino: DiarioView(vm: vm, indexGirassol: vm.girassois.firstIndex(of: girassol) ?? 0))
                            .accessibilityLabel("Girassol \(girassol.nome)")
                        if self.editando {
                            VStack {
                                HStack{
                                    Button {
                                        vm.girassois.remove(at: vm.girassois.firstIndex(of: girassol) ?? 0)
                                        vm.salvarDados()
                                    } label: {
                                        Image("remove")
                                            .resizable()
                                            .frame(width: vm.screenWidth * 0.1, height: vm.screenWidth * 0.1)
                                    }
                                    Spacer()
                                }
                                Spacer()
                            }
                        }
                    }
                }
            }
            .padding(20)
        }
        .navigationBarBackButtonHidden(true)
        .background {
            Image("backgroundImage")
                .resizable()
                .ignoresSafeArea()
                .frame(width: vm.screenWidth, height: vm.screenHeight * 1.15, alignment: .center)
        }
        .minimumScaleFactor(0.5)
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Diário")
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
                    self.editando.toggle()
                } label: {
                    Image(systemName: "pencil.circle")
                        .resizable()
                        .frame(width: vm.screenWidth * 0.1, height: vm.screenWidth * 0.1)
                        .foregroundColor(Color("corFundoBotao"))
                }
            }
        }
    }
}
