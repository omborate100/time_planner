import 'package:flutter/material.dart';
import 'package:time_planner/src/time_planner_date_time.dart';
import 'package:time_planner/src/config/global_config.dart' as config;

/// Widget that show on time planner as the tasks
class TimePlannerTask extends StatelessWidget {
  /// Minutes duration of task or object
  final int minutesDuration;

  /// Days duration of task or object, default is 1
  final int? daysDuration;

  /// When this task will be happen
  final TimePlannerDateTime dateTime;

  /// Background color of task
  final Color? color;
  final int? index;
  /// This will be happen when user tap on task, for example show a dialog or navigate to other page
  final Function? onTap;
  final Function? onLongPress;
  /// Show this child on the task
  ///
  /// Typically an [Text].
  final Widget? child;
  final Color? borderColor;

  /// parameter to set space from left, to set it: config.cellWidth! * dateTime.day.toDouble()
  final double? leftSpace;

  /// parameter to set width of task, to set it: (config.cellWidth!.toDouble() * (daysDuration ?? 1)) -config.horizontalTaskPadding!
  final double? widthTask;

  /// Widget that show on time planner as the tasks
  const TimePlannerTask(
      {Key? key,
        required this.minutesDuration,
        required this.dateTime,
        this.daysDuration,
        this.color,
        this.onTap,
        this.onLongPress,
        this.child,
        this.borderColor,
        this.leftSpace,
        this.index,
        this.widthTask})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    // double topPosition = _calculateTopPosition();
    return
      Positioned(
      top: ((config.cellHeight! * (index??0)) +
          ((dateTime.minutes * config.cellHeight!) / 60))
          .toDouble(),
      left: config.cellWidth! * dateTime.day.toDouble() -1,
      
      child:
      SizedBox(
        width:widthTask,
        height: config.cellHeight, 
                child:InkWell(
                  onLongPress: onLongPress as void Function()? ?? (){},
                  onTap: onTap as void Function()? ?? () {},
                  child: Container(
                    height: config.cellHeight,
                    width: widthTask,
                    // (daysDuration! >= 1 ? daysDuration! : 1)),
                    decoration: BoxDecoration(
                        color: color ?? Theme.of(context).primaryColor,
                        border: Border(right: BorderSide(color: borderColor??Colors.white ,width: 1.0),bottom: BorderSide(color: borderColor??Colors.white, width: 1.0))),
                   
                    child:  Center(
                    child: child,
                  
                  ),)
                ),
             
        // Stack(
        //       children: [
        //        ],
        //     ),
          ),
    );
  }
}
