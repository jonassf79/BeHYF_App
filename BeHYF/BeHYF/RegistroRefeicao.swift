//
//  SwiftUIView.swift
//  study
//
//  Created by found on 27/08/24.
//

import SwiftUI

struct RegistroRefeicao: View {
    
    @State private var textInput = ""
    
    var body: some View {
        NavigationStack {
            List {
                
                Section {
                    // Linha 2
                    HStack {
                        Image("chá")
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .padding(.horizontal, 60)
                        
                    }
                    
                }
                
                Section() {
                    // Linha 1
                    HStack {
                        Spacer()
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                        Spacer()
                    }
                }
                
                Section("Alimentos Ingeridos") {
                    // Linha 1
                    HStack {
                        VStack{
                            HStack{
                                Text("Iogurte")
                                    .foregroundStyle(.blue)
                                    .bold()
                                Spacer()
                                Text("350ml/200kcal ")
                                
                            }
                            
                            Spacer()
                            
                            HStack{
                                Text("Descrição:")
                                    .font(.subheadline)
                                    .bold()
                                Spacer()
                                
                            }
                            HStack{
                                Text("Um bowl de iogurte natural sem gordura. ")
                                    .font(.footnote)
                                Spacer()
                            }
                            
                            Spacer()
                            
                            HStack{
                                Text("Emoções associadas:")
                                    .font(.subheadline)
                                    .bold()
                                Spacer()
                            }
                            HStack{
                                Text("Não senti culpa ao comer.")
                                    .font(.footnote)
                                Spacer()
                                
                            }
                            
                        }
                        
                        
                    }
                    
                    
                }
                
                Section() {
                    // Linha 1
                    HStack {
                        VStack{
                            HStack{
                                Text("Chá")
                                    .foregroundStyle(.blue)
                                    .bold()
                                Spacer()
                                Text("350ml/200kcal ")
                                
                            }
                            
                            Spacer()
                            
                            HStack{
                                Text("Descrição:")
                                    .font(.subheadline)
                                    .bold()
                                Spacer()
                                
                            }
                            HStack{
                                TextField("Descreva o alimento", text: $textInput)
                                    .font(.footnote)
                                Spacer()
                            }
                            
                            Spacer()
                            
                            HStack{
                                Text("Emoções associadas:")
                                    .font(.subheadline)
                                    .bold()
                                Spacer()
                            }
                            HStack{
                                Text("Não senti culpa ao beber.")
                                    .font(.footnote)
                                Spacer()
                            }
                            
                        }
                        
                        
                    }
                }
            }
            //            .navigationTitle("Olá, Rafael!")
            //            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                        VStack{
                        Text("Café da Manhã")
                            Text("7:30")
                                .font(.footnote)
                            Text("24/01/24")
                                .font(.footnote)
                        }
                    .font(.title)
                    .bold()
                    
                }
            }
        }
    }
}

#Preview {
    RegistroRefeicao()
}
