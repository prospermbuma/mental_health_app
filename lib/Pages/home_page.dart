import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.blue[800], // Match status bar color with background
        statusBarIconBrightness: Brightness.light, // Light icons for dark background
      ),
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                /* ====== Greetings row ====== */
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /* ====== Hi Prosper! ====== */
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Prosper!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '20 Mar, 2025',
                          style: TextStyle(color: Colors.blue[100]),
                        ),
                      ],
                    ),

                    /* ====== Notification ====== */
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.notifications, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 25),

                /* ====== Search bar ====== */
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 5),
                        Text('Search', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 25),

                /* ====== How do you feel ====== */
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "••",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),

                SizedBox(height: 25),

                /* ====== How do you feel icons ====== */
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildEmotionTile("😌", "Badly"),
                    _buildEmotionTile("😊", "Fine"),
                    _buildEmotionTile("😁", "Well"),
                    _buildEmotionTile("😀", "Excellent"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEmotionTile(String emoji, String label) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Text(emoji, style: TextStyle(fontSize: 24)),
          ),
        ),
        SizedBox(height: 12),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
