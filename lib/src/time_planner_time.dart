import 'package:flutter/material.dart';
import 'package:time_planner/src/config/global_config.dart' as config;

/// Show the hour for each row of time planner
class TimePlannerTime extends StatelessWidget {
  /// Text it will be show as hour
  final String? time;
  final bool? setTimeOnAxis;

  /// Show the hour for each row of time planner
  const TimePlannerTime({
    Key? key,
    this.time,
    this.setTimeOnAxis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: config.cellHeight!.toDouble(),
      width: config.cellWidth!*.84,
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.white, width: 1.0),right: BorderSide(color: Colors.white, width: 1.0)),
          color: Color.fromRGBO(109, 187, 255, 1),
      ),
      child: setTimeOnAxis! ? Text(time!,style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Poppins', fontSize: 12,color: Color.fromRGBO(255, 255, 255, 1)),) : Center(child: Text(time!,style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Poppins', fontSize: 12,color: Color.fromRGBO(255, 255, 255, 1)),)),
    );
  }
}
