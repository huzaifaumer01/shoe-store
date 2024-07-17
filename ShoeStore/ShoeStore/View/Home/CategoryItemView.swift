
import SwiftUI
import FirebaseStorage

struct CategoryItemView: View {
    
    let category: Category
    @State var image = UIImage()
    
    var body: some View {
        
        Button(action: {
            
        }, label: {
            HStack(alignment: .center, spacing: 6) {
//                AsyncImage(url: URL(string: category.image))
//                    .scaledToFit()
//                    .frame(width: 30, height: 30, alignment: .center)
//                    .foregroundStyle(.gray)
                AsyncImage(url: URL(string: category.image)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 30, height: 30)
                .foregroundStyle(.gray)
                
                Text(category.name)
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
            }
            .padding()
            .background(
                Color.white
                    .clipShape(
                        RoundedRectangle(cornerRadius: 12)
                    )
            )
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
            
        })
    }

    func getImage() {
        let storageRef = Storage.storage().reference()
        let fileRef = storageRef.child(category.image)
        fileRef.getData(maxSize: 5*1024*1024) { data, error in
            
            if error == nil && data != nil {
                if let data = data {
                    image = UIImage(data: data) ?? UIImage()
                }
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryItemView(category: Category(id: "1", name: "Dummy", image: ""))
        .padding()
        .background(.colorBackground)
}
