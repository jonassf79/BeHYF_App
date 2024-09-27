//
//  SwiftUIView.swift
//  study
//
//  Created by found on 27/08/24.
//

import SwiftUI

class CampoDeTextoUm: ObservableObject {
    @Published var field1: String {
        didSet { UserDefaults.standard.set(field1, forKey: "field1") }
    }
    @Published var field2: String {
        didSet { UserDefaults.standard.set(field2, forKey: "field2") }
    }
    @Published var field3: String {
        didSet { UserDefaults.standard.set(field3, forKey: "field3") }
    }
    @Published var field4: String {
        didSet { UserDefaults.standard.set(field4, forKey: "field4") }
    }
    
    init() {
        self.field1 = UserDefaults.standard.string(forKey: "field1") ?? ""
        self.field2 = UserDefaults.standard.string(forKey: "field2") ?? ""
        self.field3 = UserDefaults.standard.string(forKey: "field3") ?? ""
        self.field4 = UserDefaults.standard.string(forKey: "field4") ?? ""
    }
}

class CampoDeTextoDois: ObservableObject {
    @Published var field5: String {
        didSet { UserDefaults.standard.set(field5, forKey: "field5") }
    }
    @Published var field6: String {
        didSet { UserDefaults.standard.set(field6, forKey: "field6") }
    }
    @Published var field7: String {
        didSet { UserDefaults.standard.set(field7, forKey: "field7") }
    }
    @Published var field8: String {
        didSet { UserDefaults.standard.set(field8, forKey: "field8") }
    }
    
    init() {
        self.field5 = UserDefaults.standard.string(forKey: "field5") ?? ""
        self.field6 = UserDefaults.standard.string(forKey: "field6") ?? ""
        self.field7 = UserDefaults.standard.string(forKey: "field7") ?? ""
        self.field8 = UserDefaults.standard.string(forKey: "field8") ?? ""
    }
}

struct RegistroRefeicao: View {
        
    @StateObject private var viewModelUm = CampoDeTextoUm()
    @StateObject private var viewModelDois = CampoDeTextoDois()
    
    
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
                                TextField("(Nome do alimento)", text: $viewModelDois.field5)
                                    .foregroundStyle(.blue)
                                    .bold()
                                Spacer()
                                TextField("ml/kcal", text: $viewModelDois.field6)
                                
                            }
                            
                            Spacer()
                            
                            HStack{
                                Text("Descrição:")
                                    .font(.subheadline)
                                    .bold()
                                Spacer()
                                
                            }
                            HStack{
                                TextField("Digite...", text: $viewModelUm.field1)
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
                                TextField("Digite...", text: $viewModelUm.field2)
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
                                TextField("(Nome do alimento)", text: $viewModelDois.field7)
                                    .foregroundStyle(.blue)
                                    .bold()
                                Spacer()
                                TextField("ml/kcal", text: $viewModelDois.field8)
                                
                            }
                            
                            Spacer()
                            
                            HStack{
                                Text("Descrição:")
                                    .font(.subheadline)
                                    .bold()
                                Spacer()
                                
                            }
                            HStack{
                                TextField("Digite...", text: $viewModelUm.field3)
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
                                TextField("Digite...", text: $viewModelUm.field4)
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
