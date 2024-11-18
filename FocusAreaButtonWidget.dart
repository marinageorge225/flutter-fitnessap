import 'package:flutter/material.dart';
import '../models/FocusArea.dart';
import 'exercises.dart';

class FocusAreaButtonWidget extends StatelessWidget {
  final FocusAreaButton button;

  FocusAreaButtonWidget({required this.button});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          textStyle: TextStyle(fontSize: 16),
          padding: EdgeInsets.symmetric(horizontal: 25),
          alignment: Alignment.centerLeft,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Exercises(),
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(button.title),
            Icon(button.icon, color: Colors.black),
          ],
        ),
      ),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
    );
  }
}
