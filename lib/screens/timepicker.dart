import 'package:flutter/material.dart';

class TimePickerScreen extends StatefulWidget {
  const TimePickerScreen({super.key});

  @override
  State<TimePickerScreen> createState() => _TimePickerScreenState();
}

class _TimePickerScreenState extends State<TimePickerScreen> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${selectedTime.hour}:${selectedTime.minute}'),
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? timeOfDay = await showTimePicker(
                  context: context,
                  initialTime: selectedTime,
                );
                if (timeOfDay != null) {
                  setState(() {
                    selectedTime = timeOfDay;
                  });
                }
              },
              child: Text('Choose time'),
            ),
          ],
        ),
      ),
    );
  }
}
