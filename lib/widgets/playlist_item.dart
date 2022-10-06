import 'package:casset_player/models/playlist_model.dart';
import 'package:flutter/material.dart';


class PlaylistItem extends StatelessWidget {
  const PlaylistItem({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  final Playlist playlist;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              playlist.imageUrl,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                playlist.title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                '${playlist.songs.length} songs',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
