class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: "Song1",
      description: "Song 1 description",
      url: "assets/music/song1.mp3",
      coverUrl: "assets/images/cover1.jpeg",
    ),
    Song(
      title: "Song2",
      description: "Song 2 description",
      url: "assets/music/song2mp3",
      coverUrl: "assets/images/cover2.jpeg",
    ),
    Song(
      title: "Song3",
      description: "Song 3 description",
      url: "assets/music/song3.mp3",
      coverUrl: "assets/images/cover3.jpeg",
    )
  ];
}
