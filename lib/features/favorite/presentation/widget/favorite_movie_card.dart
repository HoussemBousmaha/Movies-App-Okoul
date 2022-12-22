import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/presentation/resource/app_route_const.dart';
import '../../../movie/domain/entity/movie_details_entity.dart';
import '../../../movie/presentation/provider/future/fetch_poster_image.dart';

class FavoriteMovieCard extends HookConsumerWidget {
  const FavoriteMovieCard({super.key, required this.movie});

  final MovieDetailsEntity movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final posterAsyncValue = ref.watch(fetchPosterImageProvider(posterPath: movie.posterPath));

    return Container(
      height: size.height * 0.25,
      margin: const EdgeInsets.only(bottom: 20),
      child: posterAsyncValue.maybeWhen(
        orElse: () => null,
        data: (poster) {
          return Row(
            children: [
              SizedBox(
                height: size.height * 0.25,
                child: GestureDetector(
                  onTap: () => GoRouter.of(context).pushNamed(AppRouteName.movieDetails, params: {'id': '${movie.id}'}),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    child: Image.memory(poster, fit: BoxFit.cover, filterQuality: FilterQuality.high),
                  ),
                ),
              ),
              const SizedBox(width: 25),
              SizedBox(
                width: size.width * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.02),
                    Text(
                      movie.title,
                      style: const TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600, overflow: TextOverflow.ellipsis),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(Icons.date_range, color: Colors.amber, size: 20),
                        const SizedBox(width: 5),
                        Text(
                          movie.releaseDate.split('-').first,
                          style: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.category_outlined, color: Colors.amber, size: 20),
                        const SizedBox(width: 5),
                        Text(
                          movie.genres.isNotEmpty ? movie.genres.first.name : '',
                          style: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.timer, color: Colors.amber, size: 20),
                        const SizedBox(width: 5),
                        Text(
                          '${movie.runtime} minutes',
                          style: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}