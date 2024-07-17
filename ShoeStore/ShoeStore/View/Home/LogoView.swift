

import SwiftUI

struct LogoView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        
        HStack(spacing: 14) {
            
            Text("Shoe Store".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
                .offset(x: isAnimating ? 0 : -100)
                .opacity(isAnimating ? 1 : 0)

        }
        .onAppear {
            
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating = true
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    LogoView()
        .padding()
}
