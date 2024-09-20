//
//  TelaDeSuporte.swift
//  study
//
//  Created by found on 03/09/24.

import SwiftUI

struct TelaDeSuporte: View {
    var body: some View {
        NavigationStack {
            List {
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Você está indo \n    muito bem")
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.blue)
                        HStack{
                            Text("Lembretes:")
                            Spacer()
                        }
                        HStack{
                            Text("- Consulta com Mariana amanhã")
                            Spacer()
                        }
                        HStack{
                            Text("- Começar a fazer atividade física")
                            Spacer()
                        }
                    }
                    Spacer()
                }
                
                Section("Saúde Mental"){
                    NavigationLink(destination: PerfilPscologo()) {
                        HStack{
                            Image("psicologa")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            
                            VStack{
                                HStack{
                                    Text("Psicóloga")
                                    Spacer()
                                    
                                }
                                HStack{
                                    Text("Mariana Torres")
                                        .font(.title3)
                                    Spacer()
                                }
                                
                            }
                        }
                    }
                    HStack{
                        Image("psiquiatra")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        
                        VStack{
                            HStack{
                                Text("Psiquiatra")
                                Spacer()
                                
                            }
                            HStack{
                                Text("Fernando Carvalho")
                                    .font(.title3)
                                Spacer()
                            }
                        }
                    }
                }
                
                Section("Saúde Alimentar") {
                    HStack{
                        Image("nutrologa")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        
                        VStack{
                            HStack{
                                Text("Nutróloga")
                                Spacer()
                                
                            }
                            HStack{
                                Text("Camila Duarte")
                                    .font(.title3)
                                Spacer()
                            }
                        }
                    }
                    HStack{
                        Image("nutricionista")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        
                        VStack{
                            HStack{
                                Text("Nutricionista")
                                Spacer()
                                
                            }
                            HStack{
                                Text("Renata Barbosa")
                                    .font(.title3)
                                Spacer()
                            }
                        }
                    }
                    
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    HStack {
                        Spacer()
                        Text("Seus Profissionais")
                        Spacer()
                        
                    }
                    
                    .font(.title)
                    .bold()
                    
                }
                
            }
        }
    }
}
    
    #Preview {
        TelaDeSuporte()
    }
