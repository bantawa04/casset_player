import 'package:casset_player/models/song_model.dart';
import 'package:casset_player/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Song> songs = Song.songs;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade800.withOpacity(0.8)
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const CustomAppBar(),
        bottomNavigationBar: const CustomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const DiscoverMusic(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  top: 16.0,
                  bottom: 16.0,
                ),
                child: Column(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: SectionHeader(
                        title: "Trending Music",
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
