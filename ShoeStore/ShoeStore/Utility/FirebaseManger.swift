import Foundation
import FirebaseFirestore

class FirebaseManager: ObservableObject {
    @Published var categories: [Category] = []
    @Published var products: [Product] = []
    @Published var brands: [Brand] = []
    
    private var db = Firestore.firestore()

    func fetchCategories() {
        db.collection("category").getDocuments { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                self.categories = querySnapshot?.documents.compactMap { document in
                    try? document.data(as: Category.self)
                } ?? []
            }
        }
    }
    
    func fetchProducts() {
        db.collection("product").getDocuments { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                self.products = querySnapshot?.documents.compactMap { document in
                    try? document.data(as: Product.self)
                } ?? []
            }
        }
    }
    
    func fetchBrands() {
        db.collection("brands").getDocuments { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                self.brands = querySnapshot?.documents.compactMap { document in
                    try? document.data(as: Brand.self)
                } ?? []
            }
        }
    }
}
