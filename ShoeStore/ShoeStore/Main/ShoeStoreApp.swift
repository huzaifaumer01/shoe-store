
import SwiftUI
import FirebaseCore

@main
struct ShoeStoreApp: App {
    
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Store())
        }
    }
}
