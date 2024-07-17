
import Foundation

class Store: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product?
}
