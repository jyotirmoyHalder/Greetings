import SwiftUI

/// This is the data model of the messages
/// that will appear in the app.
/// It contains a test string and a color.
/// Moreoever it conforms to th identifiable protocol.
struct DataItemModel: Identifiable {
    let id: UUID = UUID()
    let text: LocalizedStringKey
    let color: Color
}
