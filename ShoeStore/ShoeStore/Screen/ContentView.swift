
import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var store: Store
    @ObservedObject var firebaseManager = FirebaseManager()
    
    var body: some View {
        
        GeometryReader { geometry in
            
            if !store.showingProduct && store.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavigationBarView()
                        .padding()
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5   )
                    
                    Spacer()
                    
                    
                    ScrollView(.vertical) {
                        
                        VStack(spacing: 0) {
                            
                            FeaturedTabView()
                                .frame(height: geometry.size.width / 1.475)
                                .padding(.bottom, 10)
                            
                            CategoryGridView(categories: firebaseManager.categories)
                            
                            TitleView(title: "Products")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                
                                ForEach(firebaseManager.products) { product in
                                    ProductItemView(product: product)
                                        
                                        .onTapGesture {
 
                                            withAnimation(.easeOut) {
                                                store.selectedProduct = product
                                                store.showingProduct = true
                                            }
                                        }
                                }
                            })
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView(brands:firebaseManager.brands)
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    }
                    
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                .onAppear{
                    firebaseManager.fetchProducts()
                    firebaseManager.fetchCategories()
                    firebaseManager.fetchBrands()
                }
                
            } else {
                ProductDetailView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Store())
}
