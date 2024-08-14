import 'package:flutter/material.dart';
import 'package:time_planner/src/config/global_config.dart' as config;

/// Title widget for time planner
class TimePlannerTitle extends StatelessWidget {
  /// Title of each day, typically is name of the day for example sunday
  ///
  /// but you can set any things here
  final String title;

  /// Text style for title
  final TextStyle? titleStyle;

  /// Date of each day like 03/21/2021 but you can leave it empty or write other things
  final String? date;

  /// Text style for date text
  final TextStyle? dateStyle;
final double? width;
final double? height;

  /// Title widget for time planner
  const TimePlannerTitle({
    Key? key,
    required this.title,
    this.date,
    this.titleStyle,
    this.dateStyle,
    this.width,
    this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width:width,
      decoration: BoxDecoration(
        border: Border(left: BorderSide(color: Colors.white, width: 1.0),bottom: BorderSide(color: Colors.white, width: 1.0)),
        color: Color.fromRGBO(109, 187, 255, 1)
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: titleStyle ?? const TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 2,
            ),
            date!=null
            ?Text(
              date ?? '',
              style: dateStyle ??
                  const TextStyle(color: Colors.white, fontSize: 12),
            )
            :SizedBox(),

          ],
        ),
      ),
    );
  }
}
