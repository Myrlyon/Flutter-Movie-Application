import 'package:flutter/material.dart';
import 'package:flutter_movie_application/model/movieModel.dart';
import './widget/scrollController.dart';
import './movieList.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<movieModel>? movieFav = [];

  @override
  void initState() {
    super.initState();
    addMovieToFavorites(movieFav!); // Call the function from the imported file
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: ListView.builder(
              padding: EdgeInsets.all(5),
              itemCount: movieFav!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 160,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 130, 130, 130),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Padding(padding: EdgeInsets.all(5)),
                      Text(
                        movieFav![index].title,
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
