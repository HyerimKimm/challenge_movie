class MovieModel {
  final bool adult;
  final String backdropPath;
  final List<dynamic> genreIds;
  final String id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final String releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  MovieModel.fromJson(Map<String, dynamic> json)
      : adult = json['adult'].toString() == 'true' ? true : false,
        backdropPath = json['backdrop_path'].toString(),
        genreIds = json['genre_ids'],
        id = json['id'].toString(),
        originalLanguage = json['original_language'].toString(),
        originalTitle = json['original_title'].toString(),
        overview = json['overview'].toString(),
        popularity = double.parse(json['popularity'].toString()),
        posterPath = json['poster_path'].toString(),
        releaseDate = json['release_date'].toString(),
        title = json['title'].toString(),
        video = json['video'].toString() == 'true' ? true : false,
        voteAverage = double.parse(json['vote_average'].toString()),
        voteCount = int.parse(json['vote_count'].toString());
}
