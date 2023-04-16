import 'package:challenge_movie/model/movie.dart';
import 'package:challenge_movie/screens/detail.dart';
import 'package:challenge_movie/service/api_service.dart';
import 'package:flutter/material.dart';

class PopularMovie extends StatelessWidget {
  Future<List<MovieModel>> popularMovies = ApiService.getPopularMovies();
  PopularMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 30, bottom: 10),
            child: Text(
              'Porpular Movies',
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FutureBuilder(
              future: popularMovies,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Expanded(
                    child: getPopularMovieWidget(snapshot),
                  );
                }
                return const CircularProgressIndicator();
              }),
        ],
      ),
    );
  }

  Widget getPopularMovieWidget(AsyncSnapshot<List<MovieModel>> snapshot) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      itemBuilder: (context, index) {
        final movie = snapshot.data![index];
        final imgUrl = 'https://image.tmdb.org/t/p/w500${movie.backdropPath}';
        return Row(
          children: [
            index == 0
                ? const SizedBox(
                    width: 20,
                  )
                : const SizedBox(
                    width: 10,
                  ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Detail(
                              movieId: movie.id,
                              title: movie.title,
                              posterImg: movie.posterPath,
                              voteAverage: movie.voteAverage,
                            )));
              },
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            index == snapshot.data!.length - 1
                ? const SizedBox(
                    width: 20,
                  )
                : const SizedBox(
                    width: 0,
                  ),
          ],
        );
      },
    );
  }
}
