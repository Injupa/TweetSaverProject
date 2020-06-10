import 'package:flutter/material.dart';
import 'package:tweet_webview/tweet_webview.dart';

class TweetListLayout extends StatefulWidget {
  @override
  _TweetListLayoutState createState() => _TweetListLayoutState();
}

List <String> tweets = [
  'https://twitter.com/OneTrickPony96/status/1235184718657851394?s=20',
  'https://twitter.com/OneTrickPony96/status/1269281063085408256?s=20'
];


class _TweetListLayoutState extends State<TweetListLayout> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListView.builder(
          itemCount: tweets.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: TweetWebView.tweetUrl(tweets[index]),
            );
          },
        ),
    );
  }
}