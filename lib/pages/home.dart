import 'package:flutter/material.dart';
import '/pages/tabs/movie_tab.dart';
import '/pages/tabs/tv_show_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Discover'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Movie'),
              Tab(text: 'TV Shows'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MovieTab(),
            TvShowTab(),
          ],
        ),
      ),
    );
  }
}