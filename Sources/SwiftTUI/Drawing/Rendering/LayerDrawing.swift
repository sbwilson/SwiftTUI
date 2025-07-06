import Foundation

protocol LayerDrawing: AnyObject {
    @MainActor
    func cell(at position: Position) -> Cell?
}

