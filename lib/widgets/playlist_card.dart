import 'package:flutter/material.dart';

import '../models/playlist_model.dart';
import 'playlist_item.dart';
import 'section_header.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    Key? key,
    required this.playlists,
  }) : super(key: key);

  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          const SectionHeader(title: "Playlists"),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              return PlaylistItem(playlist: playlists[index]);
            },
            itemCount: playlists.length,
          ),
        ],
      ),
    );
  }
}