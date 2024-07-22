# Contrast Shower Flutter App

Welcome to the Contrast Shower Flutter App! This project is a Flutter-based application designed to help users take contrast showers by managing shower sessions, tracking the number of cycles, and monitoring the temperature changes.

## Features

- Start new contrast shower sessions with customizable settings and 3 levels of difficulties.
- Track the progress of your shower session, including time left and cycles left.
- View past sessions and their details.
- Rate your shower sessions for future reference.

## Getting Started

These instructions will help you set up and run the project on your local machine.

### Prerequisites

Ensure you have the following installed:

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK (usually comes with Flutter)
- An IDE like Android Studio or VS Code with Flutter and Dart plugins

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/yourusername/contrast_shower_flutter.git
    cd contrast_shower_flutter
    ```

2. Install dependencies:

    ```bash
    flutter pub get
    ```

3. Run the app:

    ```bash
    flutter run
    ```

## Project Structure

The project consists of several main components:

- **main.dart**: Entry point of the application.
- **ui/pages/**: Contains the different screens of the app (`home_screen.dart`, `shower_page.dart`, `finish_page.dart`).
- **data/models/**: Contains the data models such as `shower_session.dart`.
- **data/provider/**: Contains the state management providers.
- **ui/theme/**: Contains the theme constants used in the app.
- **ui/widgets/**: Contains custom widgets used throughout the app.

## Usage

1. Launch the app on your device or emulator.
2. Start a new session by tapping "Start new session".
3. Choose the level of contrast shower, number of cycles, and seconds per cycle.
4. Monitor your session progress and view current temperature.
5. Rate the session after completion.

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Flutter Community
- [Riverpod](https://riverpod.dev/) for state management
- [SharedPreferences](https://pub.dev/packages/shared_preferences) for local storage

Thank you for using the Contrast Shower Flutter App! If you have any questions or feedback, feel free to open an issue or contact the repository owner.