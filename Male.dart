import 'package:flutter/material.dart';
import 'FocusAreaButtonWidget.dart'; // Import the FocusAreaButtonWidget
import '../models/FocusArea.dart';

class Male extends StatelessWidget {
  final List<FocusAreaButton> focusAreas = [
    FocusAreaButton(title: 'Full Body', icon: Icons.keyboard_arrow_right),
    FocusAreaButton(title: 'Arms', icon: Icons.keyboard_arrow_right),
    FocusAreaButton(title: 'Chest', icon: Icons.keyboard_arrow_right),
    FocusAreaButton(title: 'Abs', icon: Icons.keyboard_arrow_right),
    FocusAreaButton(title: 'Leg', icon: Icons.keyboard_arrow_right),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'FitnessX !',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: focusAreas.map((button) => FocusAreaButtonWidget(button: button)).toList(),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Image.asset('assets/maleparts.png', height: 350),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
