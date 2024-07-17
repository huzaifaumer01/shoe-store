
import SwiftUI

struct BrandGridView: View {
    var brands: [Brand] = []
    var body: some View {

        ScrollView(.horizontal) {
            
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, pinnedViews: []) {
                
                ForEach(brands) { brand in
                  BrandItemView(brand: brand)
                }
              }
            .frame(height: 200)
            .padding(15)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    BrandGridView()
}
