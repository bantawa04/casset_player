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
                  left: 20.0,
                  top: 20.0,
                  bottom: 20.0,
                ),
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: SectionHeader(
                        title: "Trending Music",
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.27,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          // print(songs[index].coverUrl);
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    songs[index].coverUrl,
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          );
                        },
                        itemCount: songs.length,
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
