// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_movie_images.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String $fetchMovieImagesHash() => r'bcf1b4dc7acf07f3142d4b7d044d89cca818de31';

/// See also [fetchMovieImages].
class FetchMovieImagesProvider extends FutureProvider<MovieImagesEntity> {
  FetchMovieImagesProvider({
    required this.id,
  }) : super(
          (ref) => fetchMovieImages(
            ref,
            id: id,
          ),
          from: fetchMovieImagesProvider,
          name: r'fetchMovieImagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $fetchMovieImagesHash,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is FetchMovieImagesProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef FetchMovieImagesRef = FutureProviderRef<MovieImagesEntity>;

/// See also [fetchMovieImages].
final fetchMovieImagesProvider = FetchMovieImagesFamily();

class FetchMovieImagesFamily extends Family<AsyncValue<MovieImagesEntity>> {
  FetchMovieImagesFamily();

  FetchMovieImagesProvider call({
    required int id,
  }) {
    return FetchMovieImagesProvider(
      id: id,
    );
  }

  @override
  FutureProvider<MovieImagesEntity> getProviderOverride(
    covariant FetchMovieImagesProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'fetchMovieImagesProvider';
}
