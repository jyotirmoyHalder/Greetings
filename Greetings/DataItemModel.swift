import SwiftUI

struct DataItemModel: Identifiable {
    let id: UUID = UUID()
    let text: String
    let color: Color
}
