import 'package:casset_player/models/song_model.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({super.key});

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();
    Song song = Song.songs[0];

    @override
    void initState() {
      super.initState();

      audioPlayer.setAudioSource(
        // AudioSource.uri(Uri.parse("asset://$song/.url")), //play single song
        ConcatenatingAudioSource(
          children: [
            AudioSource.uri(
              Uri.parse('asset:///${song.url}'),
            )
          ],
        ),
      );
    }

    @override
    void dispose(){
      audioPlayer.dispose();
      super.dispose();
    }

    // Stream<SeekBarData> get _seekBarDataStream =>
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            song.coverUrl,
            fit: BoxFit.cover,
          ),
          const _BackgroundFilter()
        ],
      ),
    );
  }
}

class _BackgroundFilter extends StatelessWidget {
  const _BackgroundFilter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white,
              Colors.white.withOpacity(0.5),
              Colors.white.withOpacity(0.0)
            ],
            stops: const [
              0.0,
              0.4,
              0.8
            ]).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade200,
              Colors.deepPurple.shade800,
            ],
          ),
        ),
      ),
    );
  }
}
