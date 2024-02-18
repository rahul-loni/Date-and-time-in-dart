import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date and Time"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Select Date ",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2021),
                    lastDate: DateTime(2023));
                if (datePicked != null) {
                  print(
                      'Date Select :${datePicked.day}-${datePicked.month}-${datePicked.year}');
                }
              },
              child: Text("Show"),
            ),
          ],
        ),
      ),
    );
  }
}
