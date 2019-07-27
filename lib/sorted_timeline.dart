library sorted_timeline;

import 'package:flutter/material.dart';
import 'package:sorted_timeline/draw_timeline.dart';

class SortedTimeline extends StatefulWidget {
  @override
  _SortedTimelineState createState() => _SortedTimelineState();
}

class _SortedTimelineState extends State<SortedTimeline> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: DrawTimeline(),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[Text('1')],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[Text('Card')],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
