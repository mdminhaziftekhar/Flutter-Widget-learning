import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper Screen'),
      ),
      body: Center(
        child: Stepper(
          steps: [
            Step(
              isActive: _currentStep == 0,
              title: const Text('Step 1'),
              content: const Text(
                'Information for step 1',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ),
            Step(
              isActive: _currentStep == 1,
              title: const Text('Step 2'),
              content: const Text(
                'Information for step 2',
                style: TextStyle(
                  color: Colors.deepOrange,
                ),
              ),
            ),
            Step(
              isActive: _currentStep == 2,
              title: const Text('Step 3'),
              content: const Text(
                'Information for step 3',
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
          onStepTapped: (value) {
            setState(() {
              _currentStep = value;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 2) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                _currentStep -= 1;
              });
            }
          },
        ),
      ),
    );
  }
}
