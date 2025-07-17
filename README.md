# User Directory App

A beautiful Flutter application that fetches and displays user data from the FakeStore API with modern UI design and smooth animations.

## Features

### 🎨 **Modern Design**

- Beautiful gradient splash screen with smooth animations
- Card-based user interface with shadow effects
- Colorful gradient user avatars
- Modern typography and spacing
- Responsive design for all screen sizes

### 🏗️ **Architecture**

- **Feature-Based Architecture**: Clean separation of concerns
- **MVVM Pattern**: Model-View-ViewModel architecture
- **Clean Code**: No business logic in UI layer
- **Cubit State Management**: Using flutter_bloc for state management

### 📱 **Screens**

1. **Splash Screen**: Animated introduction with gradient background
2. **Users List**: Modern card-based list of users with search functionality
3. **User Details**: Detailed view with contact and address information

### 🛠️ **Technology Stack**

- **Flutter**: Cross-platform mobile framework
- **Dio**: HTTP client for API calls
- **flutter_bloc**: State management with Cubit
- **Material 3**: Modern Material Design components

## API Integration

This app fetches data from: `https://fakestoreapi.com/users`

The API provides user information including:

- Personal details (name, username, email)
- Contact information (phone)
- Address details (street, city, zipcode, geolocation)

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── core/
│   └── api_service.dart     # HTTP client service
└── features/
    ├── splash/
    │   └── splash_screen.dart
    └── users/
        ├── models/
        │   └── user.dart    # User data models
        ├── repository/
        │   └── user_repository.dart
        ├── cubit/
        │   ├── users_cubit.dart
        │   └── users_state.dart
        └── views/
            ├── users_screen.dart
            └── user_details_screen.dart
```

## Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- iOS Simulator / Android Emulator or physical device

### Installation

1. Clone the repository

```bash
git clone <repository-url>
cd api_user_task
```

2. Install dependencies

```bash
flutter pub get
```

3. Run the app

```bash
flutter run
```

## Design Highlights

### 🌟 **Splash Screen**

- Gradient background with multiple colors
- Smooth fade and scale animations
- Custom loading indicator
- Automatic navigation to main screen

### 🎨 **User Cards**

- Colorful gradient avatars (different colors for each user)
- Modern card design with rounded corners
- Smooth shadow effects
- Responsive layout with proper spacing
- Interactive touch feedback

### 📄 **User Details**

- Hero animation for smooth transitions
- Expandable app bar with gradient background
- Organized information in categorized cards
- Color-coded icons for different information types
- Professional typography and layout

## State Management

The app uses **Cubit** (part of the flutter_bloc package) for state management:

- `UsersLoading`: Shows loading indicator
- `UsersLoaded`: Displays list of users
- `UsersError`: Shows error message with retry option

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.3
  dio: ^5.4.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
