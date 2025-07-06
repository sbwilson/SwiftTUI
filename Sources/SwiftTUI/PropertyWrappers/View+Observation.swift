import Foundation
import Observation

@available(macOS 14.0, *)
extension View {
	func setupObservableClassProperties(node: Node) {
		for (_, value) in Mirror(reflecting: self).children {
			if let observable = value as? Observation.Observable {
				startObservation(node: node)
			}
		}
	}

	@MainActor
	func startObservation(node: Node) {
		log("Starting observation")
		withObservationTracking {
			self.body
		} onChange: {
			defer {
				Task { @MainActor in
					startObservation(node: node)
				}
			}
			log("Observation observed a change. invalidating node...")
			Task { @MainActor in node.root.application?.invalidateNode(node) }
		}
	}
}
