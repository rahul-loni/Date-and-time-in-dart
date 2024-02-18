import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({super.key});

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Date and Time")),
      body: Center(
        child: Column(children: [
          Text("Select Time and Date"),
          ElevatedButton(
            onPressed: () async {
              DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2024));
              if (datePicked != null) {
                print(
                    "select Date ${datePicked.day}-${datePicked.month}-${datePicked.year}");
              }
            },
            child: Text("show Date "),
          )
        ]),
      ),
    );
  }
}
