import SwiftUI

struct TelaDiarios: View {
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Spacer()
                    VStack {
                        Text("Você está indo \n    muito bem")
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.blue)
                        HStack {
                            Text("Lembretes:")
                            Spacer()
                        }
                        HStack {
                            Text("- Consulta com Mariana amanhã")
                            Spacer()
                        }
                        HStack {
                            Text("- Começar a fazer atividade física")
                            Spacer()
                        }
                    }
                    Spacer()
                }
                
                Section(header: Text("Registro de Refeição\nHoje")) {
                    
                        HStack {
                            Image(systemName: "plus.circle.fill")
                                .font(.title2)
                            
                        }
                        .frame(width: 360, height: 75, alignment: .center)
                    
                    NavigationLink(destination: RegistroRefeicao()) {
                        Text("Café da manhã")
                            .font(.title3)
                            .bold()
                            .foregroundStyle(.blue)
                            .frame(width:360, height: 75, alignment:.center)
                    }
                
                    Text("Jantar")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.blue)
                        .frame(width: 360, height: 75, alignment: .center)
                    
                    Text("Almoço")
                        .font(.title3)
                        .bold()
                        .foregroundStyle(.blue)
                        .frame(width: 360, height: 75, alignment: .center)
                }
                .listRowSeparator(.hidden)
            }
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    HStack {
                        Spacer()
                        Text("Início")
                        Spacer()
                    }
                    .font(.title)
                    .bold()
                }
            }
        }
        .onAppear {
            UIToolbar.appearance().backgroundColor = .black
        }
    }
}

struct registroRefeicao: View {
    var body: some View {
        Text("Registro de Refeição")
    }
}

#Preview {
    TelaDiarios()
}
