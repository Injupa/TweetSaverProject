import 'package:flutter/material.dart';
import 'folder_list.dart';
import 'tweet_list.dart';

void main() {
  runApp(TweetSaver());
}


class TweetSaver extends StatefulWidget {
  @override
  _TweetSaverState createState() => _TweetSaverState();
}

class _TweetSaverState extends State<TweetSaver> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        '/listTweet': (context) => TweetListLayout(),
      },
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TweetSaver'),
          backgroundColor: Colors.grey[900],
          centerTitle: true,
        ),
        body: FolderListLayout(),
    );
  }
}