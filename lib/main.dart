import 'package:flutter/material.dart';
import 'about_me_page.dart'; // Import your about me page
import 'personal_info_page.dart'; // Import your personal info page
import 'skills_page.dart'; // Import your skills page
import 'education_page.dart'; // Import your education page
import 'experience_page.dart'; // Import your experience page

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This will track whether the app is in dark mode or light mode
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume App',
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.lightBlue[50], // Light blue background for light mode
      ),
      darkTheme: ThemeData.dark(), // Dark theme
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light, // Toggle between dark and light mode
      debugShowCheckedModeBanner: false, // To remove the debug banner
      home: HomePage(
        toggleTheme: toggleTheme,
        isDarkMode: isDarkMode,
      ),
    );
  }

  // Function to toggle the theme mode
  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode; // Switch between true (dark mode) and false (light mode)
    });
  }
}

class HomePage extends StatelessWidget {
  final Function toggleTheme; // Function to toggle theme
  final bool isDarkMode; // Track current mode (dark or light)

  HomePage({required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Resume',
          style: TextStyle(
            color: isDarkMode ? Colors.white : Colors.blue[900], // AppBar text color
          ),
        ),
        centerTitle: true,
        backgroundColor: isDarkMode ? Colors.blue[900] : Colors.blue[100], // AppBar background color
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              toggleTheme(); // Call the function to switch the mode
            },
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Profile Picture
            CircleAvatar(
              radius: 60, // Adjust size of the profile picture
              backgroundImage: AssetImage('assets/images/profile.jpg'), // Add your image here
            ),
            SizedBox(height: 20),
            // Name
            Text(
              'Afrina Noor',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: isDarkMode ? Colors.lightBlue[100] : Colors.black, // Name color
              ),
            ),
            SizedBox(height: 10),
            // Email with Mailbox Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.email, color: isDarkMode ? Colors.lightBlueAccent : Colors.black), // Email icon color
                SizedBox(width: 10),
                Text(
                  'tasmimafrin1189@gmail.com',
                  style: TextStyle(
                    fontSize: 18,
                    color: isDarkMode ? Colors.white : Colors.black, // Email text color
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Contact Number with Phone Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.phone, color: isDarkMode ? Colors.lightBlueAccent : Colors.black), // Phone icon color
                SizedBox(width: 10),
                Text(
                  '01611802850',
                  style: TextStyle(
                    fontSize: 18,
                    color: isDarkMode ? Colors.white : Colors.black, // Phone text color
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            // Buttons to navigate to other pages
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutMePage()), // Navigate to About Me Page
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isDarkMode ? Colors.blue[900] : Colors.blue[100], // Button background color
                foregroundColor: isDarkMode ? Colors.white : Colors.blue[900], // Button text color
              ),
              child: Text('About'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PersonalInfoPage()), // Navigate to Personal Info Page
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isDarkMode ? Colors.blue[900] : Colors.blue[100], // Button background color
                foregroundColor: isDarkMode ? Colors.white : Colors.blue[900], // Button text color
              ),
              child: Text('Personal Information'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SkillsPage()), // Navigate to Skills Page
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isDarkMode ? Colors.blue[900] : Colors.blue[100], // Button background color
                foregroundColor: isDarkMode ? Colors.white : Colors.blue[900], // Button text color
              ),
              child: Text('Skills'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EducationPage()), // Navigate to Education Page
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isDarkMode ? Colors.blue[900] : Colors.blue[100], // Button background color
                foregroundColor: isDarkMode ? Colors.white : Colors.blue[900], // Button text color
              ),
              child: Text('Educational Qualification'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExperiencePage()), // Navigate to Experience Page
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isDarkMode ? Colors.blue[900] : Colors.blue[100], // Button background color
                foregroundColor: isDarkMode ? Colors.white : Colors.blue[900], // Button text color
              ),
              child: Text('Experience'),
            ),
          ],
        ),
      ),
    );
  }
}
