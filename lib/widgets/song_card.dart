import 'package:flutter/material.dart';

import '../models/song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    Key? key,
    required this.song,
  }) : super(key: key);

  final Song song;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            song.coverUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
