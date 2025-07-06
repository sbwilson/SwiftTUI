import SwiftTUI

@MainActor
struct ContentView: View {
    var body: some View {
        FlagEditor()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}
