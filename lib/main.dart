import 'package:casset_player/screens/song_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
      home: const SongScreen(),
      getPages: [
        GetPage(name: '/', page: () => const SongScreen()),
        // GetPage(name: '/song', page: () => const SongScreen())
        // GetPage(name: '/playlist', page: () => const PlaylistScreen())
      ],
    );
  }
}
