import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TelaDiarios()
                .tabItem {
                    Label("Início", systemImage: "house")
                }
                .tag(1)
            
            TelaDeSuporte()
                .tabItem {
                    Label("Suporte", systemImage: "staroflife")
                }
                .tag(2)
        }
    }
}

#Preview {
    ContentView()
}
