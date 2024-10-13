import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Detect if dark mode is enabled
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    // Define dynamic colors based on the theme
    final appBarColor = isDarkMode ? Colors.grey[850] : Colors.pink[100]; // AppBar background
    final appBarTextColor = isDarkMode ? Colors.yellow[700] : Colors.pink; // AppBar text
    final backgroundColor = isDarkMode ? Colors.grey[900] : Colors.pink[50]; // Body background
    final headingTextColor = isDarkMode ? Colors.yellowAccent[100] : Colors.black; // Heading color
    final iconColor = isDarkMode ? Colors.yellowAccent : Colors.pink; // Icon color
    final progressBarColor = isDarkMode ? Colors.blueGrey : Colors.pink; // Progress bar color
    final bodyTextColor = isDarkMode ? Colors.white70 : Colors.black87; // Body text color

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Skills',
          style: TextStyle(
            color: appBarTextColor, // Dynamic AppBar text color
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: appBarColor, // Dynamic AppBar background color
      ),
      backgroundColor: backgroundColor, // Dynamic background color
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row for "My Skills" heading and pencil icon
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Pencil Icon
                  Icon(
                    Icons.edit,
                    size: 30,
                    color: iconColor, // Dynamic icon color
                  ),
                  SizedBox(width: 8),
                  // Centered "My Skills" Heading
                  Text(
                    'My Skills',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: iconColor, // Dynamic heading color
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40), // Space below the heading

              // Row for Soft Skills and Other Skills
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Soft Skills Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Soft Skills Heading
                        Text(
                          'Programming Skills',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: headingTextColor, // Dynamic heading color
                          ),
                        ),
                        SizedBox(height: 20),

                        // List of Soft Skills with Progress Bars
                        skillProgress('C++', 0.8, progressBarColor, bodyTextColor),
                        skillProgress('Python', 0.9, progressBarColor, bodyTextColor),
                        skillProgress('MySQL', 0.7, progressBarColor, bodyTextColor),
                        skillProgress('HTML', 0.85, progressBarColor, bodyTextColor),
                        skillProgress('CSS', 0.8, progressBarColor, bodyTextColor),
                        skillProgress('Flutter', 0.75, progressBarColor, bodyTextColor),
                        skillProgress('JavaScript', 0.7, progressBarColor, bodyTextColor),
                      ],
                    ),
                  ),
                  SizedBox(width: 20), // Space between columns

                  // Other Skills Column
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Other Skills Heading
                        Text(
                          'Other Skills',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: headingTextColor, // Dynamic heading color
                          ),
                        ),
                        SizedBox(height: 50),

                        // List of Other Skills with Progress Bars
                        skillProgress('Critical Thinking', 0.9, progressBarColor, bodyTextColor),
                        skillProgress('Competitive Programming', 0.75, progressBarColor, bodyTextColor),
                        skillProgress('Leadership', 0.85, progressBarColor, bodyTextColor),
                        skillProgress('Teamwork', 0.95, progressBarColor, bodyTextColor),
                        skillProgress('Email Writing', 0.95, progressBarColor, bodyTextColor),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget to create a skill with a smaller progress bar
  Widget skillProgress(String skill, double value, Color progressColor, Color textColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            skill,
            style: TextStyle(fontSize: 14, color: textColor), // Dynamic text color
          ),
          SizedBox(height: 5),
          SizedBox(
            width: 150, // Width for each progress bar
            child: LinearProgressIndicator(
              value: value, // Skill level between 0 and 1
              backgroundColor: Colors.grey[300],
              color: progressColor, // Dynamic progress bar color
              minHeight: 8,
            ),
          ),
        ],
      ),
    );
  }
}
