//
//  HomeView.swift
//  Teste_Plantas
//
//  Created by Caroline Stelitano on 27/03/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: {
                    DiarioView()
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: vm.screenHeight * 0.3, alignment: .center)
                            .padding(.horizontal)
                            .foregroundColor(.green)
                            
                        HStack {
                            Image(systemName: "book.fill")
                                .resizable()
                                .frame(width: vm.screenWidth * 0.2, height: vm.screenHeight * 0.075)
                                .padding(.leading, 50)
                                .foregroundColor(.black)
                            Spacer()
                            Text("Diário")
                                .frame(width: vm.screenWidth * 0.5, alignment: .center)
                                .font(.system(size: 36))
                                .padding(.trailing, 50)
                                .foregroundColor(.black)
                        }
                    }
                })
                .padding(.vertical, 50)
                
                NavigationLink(destination: {
                    AprendaCuidarView()
                }, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: vm.screenHeight * 0.3, alignment: .center)
                            .padding(.horizontal)
                            .foregroundColor(.green)
                            
                        HStack {
                            Image(systemName: "camera.macro")
                                .resizable()
                                .frame(width: vm.screenWidth * 0.2, height: vm.screenHeight * 0.1)
                                .padding(.leading, 50)
                                .foregroundColor(.black)
                            Spacer()
                            Text("Aprenda a cuidar")
                                .frame(width: vm.screenWidth * 0.5, alignment: .center)
                                .font(.system(size: 36))
                                .padding(.trailing, 50)
                                .foregroundColor(.black)
                        }
                    }
                })
            }
            .toolbar{
                ToolbarItem {
                    Text("Plantee")
                        .font(.system(size: 32))
                        .fontWeight(.heavy)
                        .frame(width: vm.screenWidth * 0.715, alignment: .center)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: {
                        ConfigView()
                    }, label: {
                        Image(systemName: "gear.circle")
                    })
                }
            }
//            .navigationTitle("Naturee")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
