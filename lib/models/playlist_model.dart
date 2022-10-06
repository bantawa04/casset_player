import 'song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;
  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  static List<Playlist> playlist = [
    Playlist(
      title: "Hip-hop R&B Mix",
      songs: Song.songs,
      imageUrl: "https://source.unsplash.com/300x300/?hiphop",
    ),
    Playlist(
      title: "Rock & Roll",
      songs: Song.songs,
      imageUrl: "https://source.unsplash.com/300x300/?RocknRoll",
    ),
    Playlist(
      title: "Techno",
      songs: Song.songs,
      imageUrl: "https://source.unsplash.com/300x300/?techno",
    ),
  ];
}
