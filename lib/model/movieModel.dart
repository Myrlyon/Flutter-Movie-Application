class movieModel {
  late String title;
  late String rating;
  late String releaseDate;
  late String description;
  late String posterImage;

  movieModel(String title, String rating, String releaseDate,
      String description, String posterImage) {
    this.title = title;
    this.rating = rating;
    this.releaseDate = releaseDate;
    this.description = description;
    this.posterImage = posterImage;
  }
}
