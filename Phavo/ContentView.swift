import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationStack {
                InicioView()
            }
            .tabItem {
                Label("Início", systemImage: "house.fill")
            }
            NavigationStack {
                PontoView()
            }
            .navigationTitle("Controle de ponto")
            .tabItem {
                Label("Ponto",
                      systemImage: "clock.badge.checkmark.fill")
            }
            NavigationStack {
                ChatView()
            }
            .tabItem {
                Label("Chat", systemImage: "message.fill")
            }
        }
        .background(.ultraThinMaterial)
        .onAppear {
            UITabBar.appearance().backgroundColor = .grayTabBar
        }
        .accentColor(.yellow)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
