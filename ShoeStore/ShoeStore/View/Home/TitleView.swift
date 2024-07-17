
import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        
        HStack {
            Text(title)
                .font(.title)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    TitleView(title: "Shoe")
        .background(.colorBackground)
}
