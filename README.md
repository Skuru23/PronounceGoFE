# PronounceGoFE

## Getting Started

This project is a Flutter application. Follow the steps below to set up and run the project.

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Comes with Flutter
- OpenAPI Generator: [Install OpenAPI Generator](https://openapi-generator.tech/docs/installation)

### Installation

1. Clone the repository:

   ```sh
   git clone https://github.com/your-repo/PronounceGoFE.git
   cd PronounceGoFE
   ```

2. Install dependencies:

   ```sh
   flutter pub get
   ```

3. Generate API client using OpenAPI Generator:
   ```sh
   openapi-generator-cli generate -i path/to/your/openapi.yaml -g dart -o lib/api
   ```

### Running the App

1. Run the app on an emulator or connected device:
   ```sh
   flutter run
   ```

### Splash Screen

This project uses `flutter_native_splash` for the splash screen. The configuration for the splash screen can be found in the `pubspec.yaml` file and the `lib/splash_screen.dart` file.

To customize the splash screen, refer to the [flutter_native_splash documentation](https://pub.dev/packages/flutter_native_splash).

### Additional Information

For more details on Flutter development, visit the [official documentation](https://flutter.dev/docs).
