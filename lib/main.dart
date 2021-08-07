import 'package:flutter/material.dart';
import 'package:instagram_clone_app/Screens/loading_screen.dart';
import 'package:instagram_clone_app/Screens/feed_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        '/feed': (context) => FeedScreen()
      },
      theme: ThemeData.dark(),
      // home: LoadingScreen(),
    );
  }
}
