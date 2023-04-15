import 'dart:convert';
import 'package:challenge_movie/model/movie.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  final String popular = "popular";

  void getPopularMovies() async {
    final url = Uri.parse('$baseUrl/$popular');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> movies = jsonDecode(response.body)['results'];
      for (var movie in movies) {
        final movModel = MovieModel.fromJson(movie);
        print('title:${movModel.title}');
      }
      return;
    }
    throw Error();
  }
}
