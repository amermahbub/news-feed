import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Feed',
      home: NewsFeed(),
    );
  }
}

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return _buildPortraitLayout();
        } else {
          return _buildLandscapeLayout();
        }
      },
    );
  }

  Widget _buildPortraitLayout() {
    return ListView(
      children: [
        _buildNewsArticle('Headline 1',
            'https://e0.365dm.com/21/05/2048x1152/skysports-lionel-messi-barcelona_5390329.jpg?20210522073558'),
        _buildNewsArticle('Headline 2',
            'https://e0.365dm.com/21/05/2048x1152/skysports-lionel-messi-barcelona_5390329.jpg?20210522073558'),
        _buildNewsArticle('Headline 3',
            'https://e0.365dm.com/21/05/2048x1152/skysports-lionel-messi-barcelona_5390329.jpg?20210522073558'),
      ],
    );
  }

  Widget _buildLandscapeLayout() {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
      ),
      children: [
        _buildNewsArticle('Headline 1',
            'https://e0.365dm.com/21/05/2048x1152/skysports-lionel-messi-barcelona_5390329.jpg?20210522073558'),
        _buildNewsArticle('Headline 2',
            'https://e0.365dm.com/21/05/2048x1152/skysports-lionel-messi-barcelona_5390329.jpg?20210522073558'),
        _buildNewsArticle('Headline 3',
            'https://e0.365dm.com/21/05/2048x1152/skysports-lionel-messi-barcelona_5390329.jpg?20210522073558'),
      ],
    );
  }

  Widget _buildNewsArticle(String headline, String imageUrl) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Card(
        child: Column(
          children: [
            Image.network(imageUrl),
            Text(headline),
          ],
        ),
      ),
    );
  }
}
