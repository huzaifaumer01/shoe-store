
import SwiftUI

struct CategoryGridView: View {
    var categories: [Category] = []
    var body: some View {
        
        ScrollView(.horizontal) {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
 
                ForEach(categories) { category in
                    CategoryItemView(category: category)
                }
            }
            .frame(height: 150)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryGridView()
        .padding()
        .background(colorBackground)
}
