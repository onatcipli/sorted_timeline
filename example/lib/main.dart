import 'package:flutter/material.dart';
import 'package:sorted_timeline/sorted_timeline.dart';
import 'package:sorted_timeline/timeline_item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SortedTimeline Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SortedTimeline Package Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          SortedTimeline(
            timelineItems: <TimelineItem>[
              TimelineItem(
                  time: DateTime.now().add(Duration(days: 1)),
                  itemBuilder: (context) {
                    return Text('Item builder 1 day Here ');
                  }),
              TimelineItem(
                  time: DateTime.now().add(Duration(hours: 1)),
                  itemBuilder: (context) {
                    return Text('Item builder 1 hour Here ');
                  }),
              TimelineItem(
                  time: DateTime.now().add(Duration(hours: 2)),
                  itemBuilder: (context) {
                    return Text('Item builder 2 hour Here ');
                  }),
              TimelineItem(
                  time: DateTime.now(),
                  itemBuilder: (context) {
                    return Text('Item builder now Here ');
                  }),
            ],
          )
        ],
      ),
    );
  }
}
