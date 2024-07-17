
import SwiftUI

struct FooterView: View {
    
    var body: some View {
        
        VStack {
            
            Text("Step into style at Footwear Haven! Discover a wide range of trendy and comfortable shoes for men, women, and children.Our collection features top brands and the latest designs, ensuring you stay ahead in fashion. ")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image(systemName: "shoe.2")
                .renderingMode(.template)
                .layoutPriority(0)
                .foregroundStyle(.gray)
                .frame(width: 30, height: 30, alignment: .center)
                
            Text("Copyright © Huzaifa\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FooterView()
        .padding()
}
