import 'package:flutter/material.dart';

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Check if dark mode is enabled
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Experiences',
          style: TextStyle(
            color: isDarkMode ? Colors.yellow[400] : Colors.pink, // AppBar text color
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: isDarkMode ? Colors.grey[900] : Colors.pink[100], // AppBar background color
      ),
      backgroundColor: isDarkMode ? Colors.grey[850] : Colors.pink[50], // Page background color
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Left align
            children: [
              // Main Heading with Icon beside it
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Keeps Row centered with minimal width
                  children: [
                    Icon(
                      Icons.work, // Use your desired icon here
                      size: 26,
                      color: isDarkMode ? Colors.yellowAccent[100] : Colors.pink, // Work icon color
                    ),
                    SizedBox(width: 8), // Space between the icon and text
                    Text(
                      'My Experience',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: isDarkMode ? Colors.yellowAccent[100] : Colors.pink, // Heading color
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10), // Space below heading

              // Graphics Design Work Section
              experienceSection(
                logoPath: 'assets/images/a_logo.jpg', // Replace with your graphics design logo path
                role: 'Graphic Designer',
                company: 'Freelance',
                duration: '2022 - Present',
                description:
                'Worked on various design projects including social media graphics, logos, and promotional materials.',
                isDarkMode: isDarkMode, // Pass dark mode state
              ),
              SizedBox(height: 10), // Space between sections

              // Data Science and Research Club Section
              experienceSection(
                logoPath: 'assets/images/IDSRG_logo.jpg', // Replace with your research club logo path
                role: 'Executive',
                company: 'IIUC Data Science and Research Club',
                duration: 'July 2022 - June 2024',
                description:
                'Participated in research projects, data analysis, and contributed to club activities.',
                isDarkMode: isDarkMode, // Pass dark mode state
              ),
              SizedBox(height: 10), // Space between sections

              // Virtual Internship Section
              experienceSection(
                logoPath: 'assets/images/coderscave_logo.jpg', // Replace with your internship logo path
                role: 'Web Development Intern',
                company: 'Coderscave',
                duration: 'Jan 2024 - February 2024',
                description:
                'Designed various projects to enhance my skill and gather knowledge. Got to learn many new things.',
                isDarkMode: isDarkMode, // Pass dark mode state
              ),
              SizedBox(height: 10), // Space between sections

              experienceSection(
                logoPath: 'assets/images/YSSE_logo.jpg', // Replace with your internship logo path
                role: 'Graphic Design Intern',
                company: 'YSSE',
                duration: 'Dec 2023 - May 2024',
                description:
                'Designed marketing materials and collaborated with the marketing team to enhance brand visibility. Also worked in their IT section. Gathered knowledge, experience and build networking with people.',
                isDarkMode: isDarkMode, // Pass dark mode state
              ),
              SizedBox(height: 10), // Space between sections

              // Another Virtual Internship Section
              experienceSection(
                logoPath: 'assets/images/lead_logo.jpg', // Replace with your second internship logo path
                role: 'Contributing Intern',
                company: 'Lead Academy',
                duration: 'Dec 2023 - May 2024',
                description:
                'Created visual content for various digital platforms and contributed to team brainstorming sessions.',
                isDarkMode: isDarkMode, // Pass dark mode state
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget to create an experience section
  Widget experienceSection({
    required String logoPath,
    required String role,
    required String company,
    required String duration,
    required String description,
    required bool isDarkMode, // Add parameter to check dark mode
  }) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center, // Align items to the start (left)
          children: [
            // Logo
            Image.asset(
              logoPath,
              height: 70, // Adjust height as needed
            ),
            SizedBox(width: 20), // Space between logo and text
            // Experience details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Left align text
                children: [
                  Text(
                    role,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isDarkMode ? Colors.yellowAccent[400] : Colors.pink, // Role color based on dark mode
                    ),
                  ),
                  Text(
                    company,
                    style: TextStyle(fontSize: 14, color: isDarkMode ? Colors.yellowAccent[100] : Colors.black), // Company color based on dark mode
                  ),
                  Text(
                    duration,
                    style: TextStyle(fontSize: 12, color: isDarkMode ? Colors.white70 : Colors.black), // Duration color based on dark mode
                  ),
                  SizedBox(height: 8), // Space between title and description
                  Text(
                    description,
                    style: TextStyle(fontSize: 12, color: isDarkMode ? Colors.white70 : Colors.black), // Description color based on dark mode
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
