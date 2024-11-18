
import 'package:flutter/material.dart';

class ExerciseDetailPage extends StatelessWidget {
  final String title;
  final String image;

  ExerciseDetailPage({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 350,width: 350, fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              title,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),

            ),
          ],
        ),
      ),
    );
  }
}
