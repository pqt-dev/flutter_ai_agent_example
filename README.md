# Flutter AI Agent
An AI-generated Flutter application demonstrating clean architecture, state management with BLoC, and data fetching from remote REST APIs.

## Features
- **Clean Architecture:** Organized by Domain, Data, and Presentation layers.
- **REST API Integration:** Implements Dio client to fetch global country data.
- **State Management:** Fully reactive UI using flutter_bloc and freezed data models.
- **Dynamic Navigation:** GoRouter integration for bottom shell routing.

## Getting Started
Ensure you have Flutter 3.x installed. To start development:

```bash
flutter pub get
dart run build_runner build -d
flutter run
```
