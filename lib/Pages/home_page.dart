import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mental_health_app/util/exercise_tile.dart';

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
        statusBarColor: Colors.blue[800],
        // Match status bar color with background
        statusBarIconBrightness:
            Brightness.light, // Light icons for dark background
      ),
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30, color: Colors.blue[800]),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.window, size: 30, color: Colors.blue[800]),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email, size: 30, color: Colors.blue[800]),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30, color: Colors.blue[800]),
              label: '',
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
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
                            Text(
                              'Search',
                              style: TextStyle(color: Colors.white),
                            ),
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
                        _buildEmotionTile("😫", "Badly"),
                        _buildEmotionTile("😊", "Fine"),
                        _buildEmotionTile("😁", "Well"),
                        _buildEmotionTile("😀", "Excellent"),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25), // Left border radius
                      topRight: Radius.circular(25), // Right border radius
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 25,
                      ),
                      child: Column(
                        /* ==== Exercises heading ==== */
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Exercises',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "••",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[900],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),

                          /* ==== Listview of exercises ==== */
                          Expanded(
                            child: ListView(
                              children: [
                                ExerciseTile(
                                  icon: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                  iconBgColor: Colors.deepOrange,
                                  exerciseName: 'Speaking Skills',
                                  numberOfExercise: 16,
                                ),
                                ExerciseTile(
                                  icon: Icon(Icons.person, color: Colors.white),
                                  iconBgColor: Colors.blue[800],
                                  exerciseName: 'Reading Speed',
                                  numberOfExercise: 8,
                                ),
                                ExerciseTile(
                                  icon: Icon(
                                    Icons.book_outlined,
                                    color: Colors.white,
                                  ),
                                  iconBgColor: Colors.pink,
                                  exerciseName: 'Writing Speed',
                                  numberOfExercise: 10,
                                ),
                                ExerciseTile(
                                  icon: Icon(
                                    Icons.fitness_center,
                                    color: Colors.white,
                                  ),
                                  iconBgColor: Colors.deepPurple,
                                  exerciseName: 'Yoga Poses',
                                  numberOfExercise: 12,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
            padding: EdgeInsets.all(16),
            child: Text(emoji, style: TextStyle(fontSize: 28)),
          ),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }
}
