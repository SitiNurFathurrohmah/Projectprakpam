import 'package:flutter/material.dart';
import '/models/tv_show.dart';
import '/widgets/flight_shuttle.dart';
import '/widgets/top_section.dart';

class TvShowScreen extends StatefulWidget {
  final TvShow tvShow;
  const TvShowScreen({
    Key? key,
    required this.tvShow,
  }) : super(key: key);

  @override
  State<TvShowScreen> createState() => _TvShowpagestate();
}

class _TvShowpagestate extends State<TvShowScreen> {
  @override
  Widget build(BuildContext context) {
    final name = widget.tvShow.name;
    final tvShowId = widget.tvShow.id;
    final description = widget.tvShow.overview;
    final posterUrl =
        'http://image.tmdb.org/t/p/w500${widget.tvShow.posterPath}';
    final backdropUrl =
        'http://image.tmdb.org/t/p/w500${widget.tvShow.backdropPath}';
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: ListView(
        children: [
          TopSection(
            backdropUrl: backdropUrl,
            posterUrl: posterUrl,
            title: name,
            id: tvShowId,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Hero(
              tag: 'description-$tvShowId',
              flightShuttleBuilder: flightShuttleBuilder,
              child: Text(
                description,
                style: const TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}