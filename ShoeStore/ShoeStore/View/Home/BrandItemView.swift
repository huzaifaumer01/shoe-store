
import SwiftUI

struct BrandItemView: View {
    
    let brand: Brand

    var body: some View {
        
        AsyncImage(url: URL(string: brand.image)) { image in
            image.resizable()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 95, height: 89)
        .foregroundStyle(.gray)
          .scaledToFit()
          .padding(2)
          .background(
            Color.white
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
          )
          .background(
            RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
          )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    
    BrandItemView(brand: Brand(id: "", image: ""))
        .padding()
        .background(colorBackground)
}
