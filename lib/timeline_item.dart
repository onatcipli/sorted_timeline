import 'package:flutter/material.dart';

typedef ItemBuilder = Widget Function(BuildContext context);

class TimelineItem {
  DateTime time;

  ItemBuilder itemBuilder;

  TimelineItem({@required this.time, @required this.itemBuilder});
}
