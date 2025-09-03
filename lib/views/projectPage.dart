import 'package:flutter/material.dart';
import 'package:profile_page/widgets/projectCard.dart';

class Projectpage extends StatelessWidget {
  const Projectpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 75,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22),
                bottomRight: Radius.circular(22),
              ),
            ),
            child: Center(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                  Text(
                    "My Projects",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ProjectCard(
                  'Simple Weather App (Flutter)',
                  'A basic single-page Flutter application that displays the current weather for a specified city using the OpenWeatherMap API.',
                  'Flutter | Dart | RestAPIs',
                  'assets/weather 2.png',
                ),
                ProjectCard(
                  'eLearning App (Student Version)',
                  'A modern Flutter-based eLearning mobile app designed for students to explore and access educational content. Currently focused on frontend (UI only), this version allows users to browse course categories, view course details, and interact with a polished learning interface.',
                  'Flutter | Dart | Riverpod',
                  'assets/figma.png',
                ),
                ProjectCard(
                  'Recipe-finder-flutter-app',
                  'Recipe Finder app ✨ Features 🔍 Search Recipes – Find recipes by name or ingredients',
                  'Flutter | Dart | RestAPIs | Firebase auth',
                  'assets/image.png',
                ),
                ProjectCard(
                  'Instagram Clone',
                  'A full-featured Instagram clone built using Flutter, Firebase Firestore, Firebase Auth, and Cloudinary for image/video storage. This app replicates core Instagram features with a clean and responsive UI.',
                  'Flutter | Dart | RestAPIs | Firebase auth | Firestore',
                  'assets/image1.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
