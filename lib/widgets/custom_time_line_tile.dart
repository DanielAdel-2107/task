import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTimeLineTile extends StatelessWidget {
  const CustomTimeLineTile({
    super.key,
    required this.title,
    required this.subTitle,
    this.isFirst = false,
    this.isLast = false,
    required this.isDone,
  });
  final String title;
  final String subTitle;
  final bool isFirst;
  final bool isLast;
  final bool isDone;
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      indicatorStyle: IndicatorStyle(
        width: 40,
        color: isDone ? Colors.red : Colors.grey.shade500,
        iconStyle: IconStyle(
            fontSize: 30,
            iconData: isDone ? Icons.check : Icons.do_disturb_alt,
            color: Colors.white),
      ),
      axis: TimelineAxis.vertical,
      endChild: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                isDone ? Colors.red : Colors.grey.shade400,
                isDone ? Colors.white : Colors.grey.shade300,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              isDone ? subTitle : "",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      isFirst: isFirst,
      isLast: isLast,
    );
  }
}
