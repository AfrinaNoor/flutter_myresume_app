import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Check if dark mode is enabled
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Educational Qualification',
          style: TextStyle(
            color: isDarkMode ? Colors.yellow : Colors.pink, // AppBar text color
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: isDarkMode ? Colors.grey[900] : Colors.pink[100], // AppBar background color
      ),
      backgroundColor: isDarkMode ? Colors.grey[850] : Colors.pink[50], // Page background color
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Left align
            children: [
              // Heading for Educational Background
              Center(
                child: Column(
                  children: [
                    Text(
                      'My Educational Background',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: isDarkMode ? Colors.yellowAccent[100] : Colors.pink, // Heading color
                      ),
                    ),
                    SizedBox(height: 10),
                    // Book Icon below the heading
                    Icon(
                      Icons.book, // Book icon
                      size: 70, // Adjust size as needed
                      color: isDarkMode ? Colors.yellowAccent[100] : Colors.pink, // Book icon color
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Space below heading

              // University Section
              educationSection(
                logoPath: 'assets/images/university_logo.jpg', // Replace with your university logo path
                institutionName: 'International Islamic University Chittagong (B.Sc)',
                department: 'Department of Computer Science & Engineering',
                yearOfGraduation: '2024',
                result: 'CGPA: 3.8', // Example result
                isDarkMode: isDarkMode, // Pass dark mode state
              ),
              SizedBox(height: 15), // Space between sections

              // College Section
              educationSection(
                logoPath: 'assets/images/college_logo.jpg', // Replace with your college logo path
                institutionName: 'CDA Public School & College (HSC)',
                department: 'Science Group',
                yearOfGraduation: '2019',
                result: 'Result: A', // Example result
                isDarkMode: isDarkMode, // Pass dark mode state
              ),
              SizedBox(height: 15), // Space between sections

              // High School Section
              educationSection(
                logoPath: 'assets/images/high_school_logo.jpg', // Replace with your high school logo path
                institutionName: 'Mohara SKQ Girls High School (SSC)',
                department: 'Science Group',
                yearOfGraduation: '2016',
                result: 'Result: A+', // Example result
                isDarkMode: isDarkMode, // Pass dark mode state
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget to create an education section
  Widget educationSection({
    required String logoPath,
    required String institutionName,
    required String department,
    required String yearOfGraduation,
    required String result,
    required bool isDarkMode, // Add parameter to check dark mode
  }) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center, // Align items to the start (left)
          children: [
            // Logo
            Image.asset(
              logoPath,
              height: 50, // Adjust height as needed
            ),
            SizedBox(width: 20), // Space between logo and text
            // Educational details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Left align text
                children: [
                  Text(
                    institutionName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isDarkMode ? Colors.yellowAccent[400] : Colors.black, // Dynamic institution name color
                    ),
                  ),
                  Text(
                    department,
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Year of Graduation: $yearOfGraduation',
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    'Result: $result',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
