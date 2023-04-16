import 'dart:convert';
import 'package:challenge_movie/model/movie.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  static const String popular = "popular";

  static Future<List<MovieModel>> getPopularMovies() async {
    List<MovieModel> movieModelInstances = [];
    final url = Uri.parse('$baseUrl/$popular');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> movies = jsonDecode(response.body)['results'];
      for (var movie in movies) {
        movieModelInstances.add(MovieModel.fromJson(movie));
      }
      return movieModelInstances;
    }
    throw Error();
  }
}
