import 'package:flutter/material.dart';
import 'package:finalrproject/views/Ecersises_details.dart';

class Exercises extends StatelessWidget {
  final List<Map<String, String>> exercises = [
    {'title': 'Push-ups', 'image': 'assets/ex1.jpg'},
    {'title': 'Squats', 'image': 'assets/ex2.jpg'},
    {'title': 'Lunges', 'image': 'assets/ex3.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'FitnessX!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ExerciseDetailPage(
                    title: exercises[index]['title']!,
                    image: exercises[index]['image']!,
                  ),
                ),
              );
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero, // Remove default padding
              minimumSize: Size(double.infinity, 300), // Full width and height
            ),
            child: Card(
              margin: EdgeInsets.all(0), // Remove card margin
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    exercises[index]['image']!,
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      exercises[index]['title']!,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

