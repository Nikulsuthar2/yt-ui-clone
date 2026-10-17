import 'package:flutter/material.dart';
import 'package:ytuiclone/youtube_master.dart';
import 'package:ytuiclone/theme/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youtube Clone',
      theme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const YoutubeMain(),
    );
  }
}
