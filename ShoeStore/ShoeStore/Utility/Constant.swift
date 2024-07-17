
import SwiftUI


// MARK: - DATA
let players: [Player] = Bundle.main.decode("player.json")!

// MARK: - COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// MARK: - Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}


// MARK: - UX 
let hapticFeedBack = UINotificationFeedbackGenerator()
