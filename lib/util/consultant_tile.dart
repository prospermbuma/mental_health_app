import 'package:flutter/material.dart';

class ConsultantTile extends StatelessWidget {
  // Instance Variables
  final String image;
  final Color? iconBgColor; // Allow nullable Color
  final String consultantName;
  final String category;

  // Constructor
  const ConsultantTile({
    super.key,
    required this.image,
    required this.iconBgColor,
    required this.consultantName,
    required this.category,
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
                    color: iconBgColor ?? Colors.blue,
                    // Provide default color if null
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    image,
                    width: 25,
                    height: 25,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      consultantName, // Use dynamic exerciseName
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 5),
                    // Subtitle
                    Text(
                      category, // Use dynamic numberOfExercise
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
