# Shoe Store

Welcome to the **Shoe Store** SwiftUI project! This project is a demonstration of how to create a modern, responsive shoe store application using SwiftUI. The app showcases various shoe categories, product listings, and brand details, along with a detailed view of each product. Data and images are managed using Firebase.

## Features

- **Categories View**: Browse different shoe categories such as sneakers, formals, etc.
- **Product Listing**: View a list of products under each category.
- **Product Detail**: Detailed information about each product.
- **Brands View**: Explore various shoe brands.
- **Firebase Integration**: Data and images are stored and retrieved using Firebase.

## Screenshots

![splash](https://github.com/user-attachments/assets/eb810423-86d7-4f15-8aa1-36390a2a0b33)
![players](https://github.com/user-attachments/assets/a244414e-78b1-41df-8e9b-fc385edfac61)
![products](https://github.com/user-attachments/assets/fa304ebc-c9e0-4bb2-9a55-d120133af4f7)
![brands](https://github.com/user-attachments/assets/4f38adf8-5d9b-4bc5-9497-895ca09ba2fc)
![product detail](https://github.com/user-attachments/assets/94e24b0f-0bd7-45b5-98d4-4ef718d94a0e)

## Requirements

- iOS 14.0+
- Xcode 15.0+
- Swift 5.0+
- Firebase Account

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/huzaifaumer01/shoe-store.git
    ```

2. Open the project in Xcode:
    ```bash
    cd shoe-store
    open ShoeStore.xcodeproj
    ```

3. Install the Firebase SDK:
    ```bash
    pod install
    ```

4. Set up Firebase:
    - Go to the [Firebase Console](https://console.firebase.google.com/).
    - Create a new project or use an existing one.
    - Add an iOS app to your Firebase project.
    - Download the `GoogleService-Info.plist` file and add it to your Xcode project.

5. Build and run the project on your preferred simulator or device.

## Project Structure

The project is structured as follows:

- **Models**: Contains data models for categories, products, and brands.
- **Views**: Contains SwiftUI views for displaying UI components.
- **ViewModels**: Contains view models that manage the data flow between models and views.
- **Services**: Contains Firebase service files for data and image retrieval.
- **Resources**: Contains assets such as images and JSON files.

## Usage

1. **Categories View**: The main screen displays different shoe categories.
2. **Product Listing**: Tapping on a category navigates to the product listing screen.
3. **Product Detail**: Tapping on a product navigates to the product detail screen, showing detailed information about the selected product.
4. **Brands View**: Navigate to the brands view to see the list of available brands.

## Contributing

Contributions are welcome! If you'd like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add new feature'`).
5. Push to the branch (`git push origin feature-branch`).
6. Create a new Pull Request.

## Contact

If you have any questions or feedback, feel free to contact me at [developer.huzaifaumer@gmail.com](mailto:developer.huzaifaumer@gmail.com).

---

Thank you for checking out the Shoe Store SwiftUI project! Happy coding!
