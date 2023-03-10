# Movies App - A simple app to search for movies (Read the README.md file for more details)

## Installation

- Clone the repo
- Make Sure you have Flutter installed
- Run `flutter create --platforms=android` or any other platform you want to build for
- Run `flutter pub get`
- Run `flutter run`
- It is recommended to use the `--release` flag when building for production and to run it on a real device or on desktop for better experience.
- Build the app for your platform (Android, iOS, Macos, Windows, Linux, Web, etc.)
- Or install the app:
- android -> [here](./output/app-release.apk)
- Enjoy!

## Platform Specifics

- The app is built for Android, iOS, Macos, Windows, Linux, Web.
- 1. Android
     - Make sure you add this line to the AndroidManifest.xml file
     - `<uses-permission android:name="android.permission.INTERNET" />`
     - Change compileSdkVersion to 33 in the build.gradle file (in the android/app/ folder)
     - Change minSdkVersion to 17 in the build.gradle file (in the android/app folder)
- 2. Macos
     - Make sure you add this line to the Info.plist file (in the Runner folder)
     - `<key> NSAppTransportSecurity </key> <dict> <key> NSAllowsArbitraryLoads </key> <true/> </dict>`
     - Make sure you add this line to the Release.entitlements file (in the Runner folder)
     - `<key> com.apple.security.network.client </key> <true/>`
- 3. IOS
     - Make sure internet permission is enabled in the Info.plist file (in the Runner folder)
     - `<key> NSAppTransportSecurity </key> <dict> <key> NSAllowsArbitraryLoads </key> <true/> </dict>`

## Features

- 1. Search for Movies
     - Search for movies by title
     - View movie details (overview, release date, runtime, cast, etc.)
     - View movie date, rating, and runtime, etc.
     - View movie backdrop image, poster image, and cast images
- 2. Favorite movies
     - View favorite movies
     - Add a movie to favorites
     - Remove a movie from favorites
- 3. Categorization
     - View movies by category (popular, top rated, upcoming, now playing, etc.)
     - View movies by genre (all genres, action, adventure, comedy, etc...)

## Dependencies (for developers)

- The app uses [hook_riverpod](https://pub.dev/packages/hooks_riverpod) for state management.
- The app uses [flutter_hooks](https://pub.dev/packages/flutter_hooks) for state management.
- The app uses [go_router](https://pub.dev/packages/go_router) for routing and navigation.
- The app uses [shared_preferences](https://pub.dev/packages/shared_preferences)for storing favorite movies.
- The app uses [freezed](https://pub.dev/packages/freezed) for data classes.
- The app is dependent on [build_runner](https://pub.dev/packages/build_runner) for code generation.
- The app uses [dio](https://pub.dev/packages/dio) for http requests.
- The app uses [connectivity_plus](https://pub.dev/packages/connectivity_plus) for checking internet connection.

## Details (for developers)

- The app is written in a very clean and organized manner.
- The app did not implement TDD (Test Driven Development) because of the time constraints and because it is a simple app and it is not necessary.
- The app uses the [The Movie Database API](https://developers.themoviedb.org/3/getting-started/introduction) to fetch movies.
- The app follows the MVVM clean architecture pattern.
- The app implements a pagination system for fetching movies by page and having infinite scrolling.
- The app implements a search system for searching movies by title.
- The app implements a caching system for caching favorite movies.
- The app fetches movies in a lazy manner meaning it only fetches movies that are displayed on the screen (fetching all movies in one is time and resource consuming (posters,backdrops, etc...)).

## Screenshots

<img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.29.47.png" width="200" height="400"> <img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.29.52.png" width="200" height="400"> <img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.30.00.png" width="200" height="400"> <img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.30.13.png" width="200" height="400"> <img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.30.21.png" width="200" height="400"> <img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.30.32.png" width="200" height="400"> <img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2010.59.28.png" width="200" height="400"> <img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-24%20at%2010.29.58.png" width="200" height="400"> <img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-28%20at%2015.34.25.png" width="200" height="400"> <img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-28%20at%2015.34.40.png" width="200" height="400">
