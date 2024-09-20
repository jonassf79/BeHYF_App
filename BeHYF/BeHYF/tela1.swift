//
//  SwiftUIView.swift
//  study
//
//  Created by found on 27/08/24.
//

import SwiftUI

struct tela1: View {
    
    
    var body: some View {
        
        TabView {
            
            List {
                VStack{
                    
                    Section{
                        
                        Text("Você está indo muito bem!")
                            .frame(width: 300, height: 50, alignment: .top)
                            .font(.title2)
                        Text("Lembretes")
                            .frame(width:300, height:50,alignment: .topLeading)
                    }
                }
                Section("Registro de Refeicao"){
                    
                        Image(systemName: "plus.circle.fill")
                            .frame(width: 361.97, height: 75.29)
                            .overlay(alignment: .bottom) {
                                Rectangle()
                                    .fill(.black)
                                    .frame(height: 5)
                            }
                    
                    Text("Café da manhã")
                        .frame(width:361, height: 75, alignment: .center)
                        .foregroundStyle(.blue)
                        .overlay(alignment: .bottom) {
                            Rectangle()
                                .fill(.black)
                                .frame(height: 5)
                        }
                    
                    Text("Jantar")
                        .frame(width:361, height: 75, alignment: .center)
                        .foregroundStyle(.blue)
                        .overlay(alignment: .bottom) {
                            Rectangle()
                                .fill(.black)
                                .frame(height: 5)
                        }
                    
                    
                    Text("Almoço")
                        .frame(width:361, height: 75, alignment: .center)
                        .foregroundStyle(.blue)
                        .overlay(alignment: .bottom) {
                            Rectangle()
                                .fill(.black)
                                .frame(height: 5)
                        }
                    
                }
                    
                .listRowSeparator(.hidden)
                
                
            }
            
            
            .onAppear() {
                UIToolbar.appearance().backgroundColor = .black
            }
            .tag(1)
            
            
            .tabItem {
                
                Label("Início", systemImage: "house")
                
                
                
            }
            Text("2")
                .tabItem {
                    
                    Label("Suporte", systemImage: "staroflife")
                    
                    
                    
                }
            Text("3")
                .tabItem {
                    
                    Label("Opções", systemImage: "gear")
                    
                    
                    
                }
            
            
            
            
        }
        
        
        
    }
    
    
}





#Preview {
    tela1()
}
