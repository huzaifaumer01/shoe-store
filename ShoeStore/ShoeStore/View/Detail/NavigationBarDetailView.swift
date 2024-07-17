
import SwiftUI

struct NavigationBarDetailView: View {
    
    @EnvironmentObject var shop: Store
    
    var body: some View {
        
        HStack {
            
            Button(action: {
                hapticFeedBack.notificationOccurred(.success)

                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
                
            }, label: {
            Image(systemName: "chevron.left")
              .font(.title)
              .foregroundStyle(.black)
          })
          
          Spacer()
          
          Button(action: {
              
              
          }, label: {
            Image(systemName: "cart")
              .font(.title)
              .foregroundStyle(.black)
          })
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBarDetailView()
        .environmentObject(Store())
        .padding()
        .background(Color.gray)
}
