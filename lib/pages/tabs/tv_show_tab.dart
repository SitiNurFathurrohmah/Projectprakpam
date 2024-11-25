import 'package:flutter/material.dart';
import '/models/tv_show.dart';
import '/services/tv_api.dart';
import '/widgets/tv_show_card.dart';

class TvShowTab extends StatefulWidget {
  const TvShowTab({Key? key}) : super(key: key);

  @override
  State<TvShowTab> createState() => _TvShowTabState();
}

class _TvShowTabState extends State<TvShowTab> {
  List<TvShow> discoverTvShows = [];

  @override
  void initState() {
    super.initState();
    fetchTvShow();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: discoverTvShows.length,
      itemBuilder: (context, index) {
        final tvshow = discoverTvShows[index];
        return TvShowCard(tvShow: tvshow);
      },
    );
  }

  Future<void> fetchTvShow() async {
    final response = await TvShowApi.discover();
    setState(() {
      discoverTvShows = response;
    });
  }
}