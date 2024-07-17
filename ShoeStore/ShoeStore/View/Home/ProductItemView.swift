
import SwiftUI
import FirebaseStorage

struct ProductItemView: View {
    
    let product: Product
    @State var image = UIImage()
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6) {
            
            ZStack {
                AsyncImage(url: URL(string: product.image)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200, height: 200)
                
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .clipShape(
                RoundedRectangle(cornerRadius: 12)
            )
            
            
            Text(product.name)
              .font(.title3)
              .fontWeight(.black)
            
            Text(product.formattedPrice)
              .fontWeight(.semibold)
              .foregroundStyle(.gray)
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 300))  {
    
    ProductItemView(product: Product(id: "1", name: "Dummy Product", image: "", price: 0, description: "dummy description", color: [0.0,0.0,0.0]))
        .padding()
        .background(colorBackground )
}
