import SwiftUI

struct Chevron: View {
    var body: some View {
        HStack {
            Text("hi")
            NavigationLink(destination: Text("D")) { EmptyView() }
            Image(systemName: "chevron.right")
                .foregroundColor(Color.red)
        }
    }
}

#Preview {
    Chevron()
}
