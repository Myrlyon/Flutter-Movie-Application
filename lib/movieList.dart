import 'package:flutter_movie_application/model/movieModel.dart';

void addMovieToFavorites(List<movieModel> movieFav) {
  movieModel movieOne =
      movieModel("The Godfather", "9", "1972", "deus patria", "poster");
  movieFav.add(movieOne);
}
