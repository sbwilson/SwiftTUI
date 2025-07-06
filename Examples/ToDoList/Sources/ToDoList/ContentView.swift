import SwiftTUI

@MainActor
struct ContentView: View {
    var body: some View {
        ToDoList()
            .padding()
            .border()
            .background(.blue)
    }
}
