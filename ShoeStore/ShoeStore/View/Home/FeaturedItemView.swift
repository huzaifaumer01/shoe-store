
import SwiftUI

struct FeaturedItemView: View {
    
    let player: Player
    
    var body: some View {

        Image(player.image)
            .resizable()
            .scaledToFit()
            .clipShape(
                RoundedRectangle(cornerRadius: 12)
            )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FeaturedItemView(player: players[0])
        .padding()
        .background(colorBackground)
}
