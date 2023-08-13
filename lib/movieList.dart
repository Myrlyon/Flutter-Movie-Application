import 'package:flutter_movie_application/model/movieModel.dart';

void addMovieToFavorites(List<movieModel> movieFav) {
  movieModel movieOne = movieModel(
      "The Godfather",
      "9.2/10 IMDB",
      "1972",
      "The story of a fictitious Sicilian Mafia family based in New York City and headed by Don Vito Corleone, who became synonymous with the Italian Mafia.",
      "assets/thegodfather.jpg");
  movieModel movieTwo = movieModel(
      "Forrest Gump",
      "8.8/10 IMDB",
      "1994",
      "A simple man with a low IQ, unknowingly influences historic events through his remarkable life journey, showcasing love, success, and the essence of human spirit.",
      "assets/forrestgump.jpg");
  movieModel movieThree = movieModel(
      "Pulp Fiction",
      "8.9/10 IMDB",
      "1994",
      "Pulp Fiction weaves interconnected stories of crime, redemption, and eccentric characters in a nonlinear narrative, exploring themes of violence, morality, and pop culture in a gritty underworld.",
      "assets/pulpfiction.jpg");
  movieModel movieFour = movieModel(
      "Fight Club",
      "8.8/10 IMDB",
      "1999",
      "Fight Club follows an insomniac office worker who forms an underground fight club as a form of rebellion, delving into identity crisis, consumerism critique, and psychological unraveling.",
      "assets/fightclub.jpg");
  movieModel movieFive = movieModel(
      "Seven Samurai",
      "8.6/10",
      "1954",
      "Seven Samurai depicts a group of skilled warriors defending a village against bandits, showcasing themes of honor, sacrifice, and camaraderie amidst intense battles and cultural exploration.",
      "assets/sevensamurai.jpg");
  movieModel movieSix = movieModel(
      "Back To The Future",
      "8.5/10 IMDB",
      "1985",
      "Back to the Future follows a young man who accidentally travels back in time, endangering his existence; he must ensure his parents' romance while navigating paradoxes and comedic situations.",
      "assets/backtothefuture.jpg");
  movieModel movieSeven = movieModel(
      "Spirited Away",
      "8.6/10 IMDB",
      "2001",
      "Spirited Away follows a young girl trapped in a mystical world, working in a bathhouse to rescue her parents; a tale of growth, friendship, and enchanting fantasy adventures.",
      "assets/spiritedaway.jpg");
  movieFav.add(movieOne);
  movieFav.add(movieTwo);
  movieFav.add(movieThree);
  movieFav.add(movieFour);
  movieFav.add(movieFive);
  movieFav.add(movieSix);
  movieFav.add(movieSeven);
}
