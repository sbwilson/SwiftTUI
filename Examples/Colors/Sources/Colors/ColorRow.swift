import SwiftTUI

@MainActor
struct ColorRow: View {
    let colorStates: [ColorState]

    var body: some View {
        HStack(spacing: 0) {
            ForEach(colorStates) { colorState in
                ColorCell(colorState: colorState)
            }
        }
    }
}
