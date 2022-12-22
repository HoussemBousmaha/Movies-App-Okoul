# Movies App - A simple app to search for movies

## Installation

- Clone the repo
- Run `flutter pub get`
- Run `flutter run`
- It is recommended to use the `--release` flag when building for production and to run it on a real device or on desktop for better experience.
- Build the app for your platform (Android, iOS, Macos, Windows, Linux, Web, etc.)
- Enjoy!

## Features

- 1. Search for Movies
     -- Search for movies by title
     -- View movie details
     -- View movie date, rating, and runtime, etc.
     -- View movie backdrop image, poster image
- 2. Favorite movies
     -- View favorite movies
     -- Add a movie to favorites
     -- Remove a movie from favorites
- 3. Categorization
     -- View movies by category (popular, top rated, upcoming, now playing, etc.)
     -- View movies by genre (action, adventure, comedy, or all genres)

## Dependencies (for developers)

- The app uses [hook_riverpod](https://pub.dev/packages/hooks_riverpod) for state management.
- The app uses [flutter_hooks](https://pub.dev/packages/flutter_hooks) for state management.
- The app uses [go_router](https://pub.dev/packages/go_router) for routing.
- The app uses [shared_preferences](https://pub.dev/packages/shared_preferences)for storing favorite movies.
- The app uses [freezed](https://pub.dev/packages/freezed) for data classes.
- The app is dependent on [build_runner](https://pub.dev/packages/build_runner) for code generation.
- The app uses [dio](https://pub.dev/packages/dio) for http requests.
- The app uses [connectivity_plus](https://pub.dev/packages/connectivity_plus) for checking internet connection.

## Details (for developers)

- The app uses the [The Movie Database API](https://developers.themoviedb.org/3/getting-started/introduction) to fetch movies.
- The app follows the MVVM clean architecture pattern.
- The app implements a pagination system for fetching movies by page and having infinite scrolling.
- The app implements a search system for searching movies by title.
- The app implements a caching system for caching favorite movies.
- The app fetches movies in a lazy manner (fetching all movies in one is time and resource consuming (posters,backdrops, etc...)).

## Screenshots

<img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.29.47.png" width="200" height="400"> <img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.29.52.png" width="200" height="400">
<img src="./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.30.00.png" width="200" height="400">

![Screenshot_2021-09-03-23-02-05-01_0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e](./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.29.47.png)
![Screenshot_2021-09-03-23-02-05-01_0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e](./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.29.52.png)
![Screenshot_2021-09-03-23-02-05-01_0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e](./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.30.00.png)
![Screenshot_2021-09-03-23-02-05-01_0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e](./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.30.13.png)
![Screenshot_2021-09-03-23-02-05-01_0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e](./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.30.21.png)
![Screenshot_2021-09-03-23-02-05-01_0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e0e](./screenshots/Simulator%20Screen%20Shot%20-%20iPhone%2014%20Pro%20Max%20-%202022-12-22%20at%2008.30.32.png)
