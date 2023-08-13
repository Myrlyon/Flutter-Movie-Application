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
    addMovieToFavorites(movieFav!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          child: ListView.builder(
            controller: AdjustableScrollController(80),
            padding: EdgeInsets.all(5),
            itemCount: movieFav!.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      // Image on the left
                      Container(
                        width: 120,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(movieFav![index].posterImage),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      // Movie details on the right
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              movieFav![index].title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text("${movieFav![index].rating}"),
                            Text("${movieFav![index].releaseDate}"),
                            Text(movieFav![index].description),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
