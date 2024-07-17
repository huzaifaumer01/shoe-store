
import SwiftUI

struct HeaderDetailview: View {
    
    @EnvironmentObject var shop: Store
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text(shop.selectedProduct?.name ?? "")
            .font(.largeTitle)
            .fontWeight(.black)
        })
        .foregroundStyle(.black)
      }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailview()
        .environmentObject(Store())
        .padding()
        .background(Color.gray)
}
