library sorted_timeline;

import 'package:flutter/material.dart';
import 'package:sorted_timeline/draw_timeline.dart';
import 'package:sorted_timeline/timeline_item.dart';

enum SortOption { NewToOld, OldToNew }

class SortedTimeline extends StatefulWidget {
  final List<TimelineItem> timelineItems;
  final SortOption sortOption;

  SortedTimeline({
    @required this.timelineItems,
    this.sortOption = SortOption.NewToOld,
  }) : assert(timelineItems != null);

  @override
  _SortedTimelineState createState() => _SortedTimelineState();
}

class _SortedTimelineState extends State<SortedTimeline> {
  List<TimelineItem> get timelineItems => widget.timelineItems;

  SortOption get sortOption => widget.sortOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: DrawTimeline(),
        child: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  children: timelineItems.map((TimelineItem timelineItem) {
                    return Icon(Icons.arrow_right);
                  }).toList(),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: timelineItems.map((TimelineItem timelineItem) {
                    return timelineItem.itemBuilder(context);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
