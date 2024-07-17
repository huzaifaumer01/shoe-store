
import SwiftUI

struct TopPartDetailView: View {
    
    @EnvironmentObject var shop: Store
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? "")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            AsyncImage(url: URL(string: shop.selectedProduct?.image ?? "")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .scaledToFit()
//            .offset(y: isAnimating ? 0 : -50)
            .padding(.bottom, 20)
        })
        .onAppear(perform: {
            
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    
    TopPartDetailView()
        .environmentObject(Store())
        .padding()
        .background(Color.gray)
}
