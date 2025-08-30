# Movies (Flutter + TMDB)
<table>
  <tr>
    <td><img src="assets/core/logo.webp" alt="Logo"></td>
  </tr>
</table> 
A Flutter app that browses movies from The Movie Database (TMDB): discover, search, and view details.


## Features
- Browse popular people (infinite scroll)
- View person details and their known for movies
- Search people by name
- Save first page of popular people and view it if offline.

## Requirements
- Preferably: Flutter 3.3X.X
- A TMDB API key: https://www.themoviedb.org/settings/api

## Configuration
Use dart-define to provide runtime configuration:
- API_TOKEN: your TMDB API key

Example read in Dart:
```dart
const tmdbApiKey = String.fromEnvironment('API_TOKEN');
```

## Getting Started

1) Install Flutter and set up devices.
2) Fetch dependencies:
  ```bash
  flutter pub get
  ```
3) Run the app (replace YOUR_KEY):
  ```bash
  flutter run \
    --dart-define=API_TOKEN=YOUR_KEY 
  ```
or
using a config file (environment.json):
  ```bash
  flutter run \
    --dart-define-from-file=environment.json
  ```


## Project Structure

```
lib/ 
├── core/ 
│   ├── extensions/ 
│   ├── failures/
│   ├── generated/
│   ├── failures/
│   ├── network/
│   ├── router/
│   ├── theme/
│   ├── widgets/
│   ├── service_locator/
│   │   ├── service_locator.dart
│   │   └── service_locator.config.dart
│   └── usecases/
├── data/
│   ├── models/
│   └── repos_impl/
├── domain/
│   ├── entities/
│   ├── repos/
│   └── usecases/
└── presentation/
├── managers/     
├── views/        
└── shared/widgets/
```
**Dependencies**

- `equatable`
- `dio`
- `dartz`
- `skeletonizer`
- `get_it`
- `injectable`
- `google_fonts`
- `cached_network_image`
- `flutter_gen` (assets codegen)
- `flutter_native_splash` (splash)
- `alice` (network inspector)

**Dev Dependencies**

- `flutter_lints`
- `build_runner` (codegen)
- `injectable_generator` (DI codegen)
- `flutter_gen_runner` (assets codegen)
- `flutter_launcher_icons`

## Credits

Data provided by TMDB. This product uses the TMDB API but is not endorsed or certified by TMDB.
