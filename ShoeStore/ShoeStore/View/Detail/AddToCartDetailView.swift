
import SwiftUI

struct AddToCartDetailView: View {
    
    @EnvironmentObject var shop: Store

    var body: some View {
        
        Button(action: {
            hapticFeedBack.notificationOccurred(.success)

        }, label: {
            
            Spacer()
            
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        })
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? 0,
                green: shop.selectedProduct?.green ?? 0,
                blue: shop.selectedProduct?.blue ?? 0
            )
        )
        .clipShape(Capsule())
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    
    AddToCartDetailView()
        .environmentObject(Store())
        .padding()
}
