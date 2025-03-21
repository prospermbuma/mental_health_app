import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mental_health_app/Pages/home_page.dart';
import 'package:mental_health_app/util/category_box.dart';
import 'package:mental_health_app/util/consultant_tile.dart';
import 'package:mental_health_app/util/exercise_tile.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPage();
}

class _CategoriesPage extends State<CategoriesPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.blue[800],
        // Status bar color
        statusBarIconBrightness: Brightness.light,

        // Light icons for dark background
        systemNavigationBarColor: Colors.grey[100],
        // Bottom bar color
        systemNavigationBarIconBrightness:
            Brightness.dark, // Light icons for dark background
      ),
      child: Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[100],
          child: SizedBox(
            height: 60, // Set height of bottom navigation bar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.home, size: 30, color: Colors.blue[800]),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.window, size: 30, color: Colors.blue[800]),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => CategoriesPage()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.message, size: 30, color: Colors.blue[800]),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person, size: 30, color: Colors.blue[800]),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => CategoriesPage()),
                    );
                  },
                ),
              ],
            ),
          ),
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
                  ],
                ),
              ),

              SizedBox(height: 33),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20), // Left border radius
                      topRight: Radius.circular(20), // Right border radius
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 25,
                      ),
                      child: Column(
                        /* ==== Category heading ==== */
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Category',
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

                          SizedBox(height: 25),

                          /* ==== Categories blocks ==== */
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryBox(
                                iconBgColor: Colors.purple,
                                categoryName: 'Relationship',
                              ),
                              CategoryBox(
                                iconBgColor: Colors.blue,
                                categoryName: 'Career',
                              ),
                            ],
                          ),

                          SizedBox(height: 15),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CategoryBox(
                                iconBgColor: Colors.deepOrange,
                                categoryName: 'Education',
                              ),
                              CategoryBox(
                                iconBgColor: Colors.pink,
                                categoryName: 'Other',
                              ),
                            ],
                          ),

                          SizedBox(height: 25),

                          /* ==== Consultant heading ==== */
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Consultant',
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

                          /* ==== Listview of consultants ==== */
                          Expanded(
                            child: ListView(
                              children: [
                                ConsultantTile(
                                  image: 'assets/images/app_logo.png',
                                  iconBgColor: Colors.deepOrange,
                                  consultantName: 'Janeth Mkeno',
                                  category: 'Education',
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
                                  icon: Icon(Icons.spa, color: Colors.white),
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
}
