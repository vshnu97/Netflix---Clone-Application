import 'package:netflix/infrastucture/api_key.dart';

class ApiEndPoints {
  static const downloads =
      "https://api.themoviedb.org/3/trending/movie/week?api_key=$apiKey";

  static const hotAndNewMovie =
      'https://api.themoviedb.org/3/discover/movie?api_key=$apiKey';

  static const hotAndNewTv =
      'https://api.themoviedb.org/3/discover/tv?api_key=$apiKey';

  static const search =
      'https://api.themoviedb.org/3/search/movie?api_key=$apiKey';

  static const indian =
      'https://api.themoviedb.org/3/discover/movie?api_key=$apiKey&with_origin_country=IN';
}
