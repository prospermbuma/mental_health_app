import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  // Instance Variables
  final Icon icon;
  final Color? iconBgColor; // Allow nullable Color
  final String exerciseName;
  final int numberOfExercise;

  // Constructor
  const ExerciseTile({
    super.key,
    required this.icon,
    required this.iconBgColor,
    required this.exerciseName,
    required this.numberOfExercise,
  });

  // Polymorphism in action
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: iconBgColor ?? Colors.blue, // Provide default color if null
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: icon, // Dynamically used icon here
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      exerciseName, // Use dynamic exerciseName
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 5),
                    // Subtitle
                    Text(
                      '$numberOfExercise Exercises', // Use dynamic numberOfExercise
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 22),
              child: Text(
                "••",
                style: TextStyle(fontSize: 20, color: Colors.grey[900]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
