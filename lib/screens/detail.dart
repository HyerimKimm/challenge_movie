import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Detail extends StatelessWidget {
  final String movieId;
  final String title;
  final String posterImg;
  final double voteAverage;
  const Detail(
      {super.key,
      required this.movieId,
      required this.title,
      required this.posterImg,
      required this.voteAverage});

  @override
  Widget build(BuildContext context) {
    final String imgUrl = 'https://image.tmdb.org/t/p/w500$posterImg';

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 0),
        elevation: 0,
        centerTitle: false,
        title: const Text('Back to list'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(imgUrl),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              RatingBarIndicator(
                  rating: voteAverage,
                  itemCount: voteAverage ~/ 2,
                  itemSize: 20.0,
                  direction: Axis.horizontal,
                  itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
