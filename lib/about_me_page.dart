import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import to open links
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Detect if dark mode is enabled
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    // Define dynamic colors based on the theme
    final appBarColor = isDarkMode ? Colors.grey[850] : Colors.pink[100]; // AppBar background
    final appBarTextColor = isDarkMode ? Colors.yellow[700] : Colors.pink[800]; // AppBar text
    final backgroundColor = isDarkMode ? Colors.grey[900] : Colors.pink[50]; // Body background
    final bodyTextColor = isDarkMode ? Colors.white70 : Colors.black87; // Body text
    final logoBackgroundColor = isDarkMode ? Colors.yellowAccent[700] : Colors.pink[100]; // Logo background
    final logoTextColor = isDarkMode ? Colors.white : Colors.pink[800]; // Logo text color
    final iconColor = isDarkMode ? Colors.yellowAccent[100] : Colors.pinkAccent; // Icon color

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About Me',
          style: TextStyle(
            color: appBarTextColor, // Dynamic AppBar text color
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: appBarColor, // Dynamic AppBar background color
      ),
      backgroundColor: backgroundColor, // Dynamic background color for the body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Logo of name's first letter
            CircleAvatar(
              radius: 50,
              backgroundColor: logoBackgroundColor, // Dynamic background for the logo
              child: Text(
                'A', // Replace 'A' with the first letter of your name
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: logoTextColor, // Dynamic color for the logo text
                ),
              ),
            ),
            SizedBox(height: 30), // Adjust the spacing between the logo and the icon

            // Mushroom icon
            Icon(
              FontAwesomeIcons.laptopCode, // Use FontAwesomeIcons for the icon
              color: iconColor, // Dynamic icon color
              size: 30,
            ),
            SizedBox(height: 30),

            // Description about you as a CSE student
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'I am a final-year student of Computer Science and Engineering Department. I am passionate about software development, data science, and UI/UX design. With experience in web development and graphic design, I love to work on creative projects that solve real-world problems.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: bodyTextColor), // Dynamic text color
              ),
            ),
            SizedBox(height: 30),

            // Social media icons with links
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Facebook
                IconButton(
                  icon: Icon(Icons.facebook),
                  color: Colors.blue[700], // Social media colors stay constant
                  iconSize: 40,
                  onPressed: () {
                    _launchURL('https://www.facebook.com/profile.php?id=100095012002053&mibextid=ZbWKwL'); // Replace with your Facebook URL
                  },
                ),
                SizedBox(width: 20),

                // LinkedIn
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.linkedin),
                  color: Colors.blue[800], // LinkedIn color
                  iconSize: 40,
                  onPressed: () {
                    _launchURL('https://www.linkedin.com/in/afrina-noor-3a0675213/'); // Replace with your LinkedIn URL
                  },
                ),
                SizedBox(width: 20),

                // GitHub
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.github),
                  color: isDarkMode ? Colors.white : Colors.black, // GitHub icon color based on theme
                  iconSize: 40,
                  onPressed: () {
                    _launchURL('https://github.com/AfrinaNoor'); // Replace with your GitHub URL
                  },
                ),
                SizedBox(width: 20),

                // WhatsApp
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.whatsapp),
                  color: Colors.green[700], // WhatsApp color stays constant
                  iconSize: 40,
                  onPressed: () {
                    _launchURL('https://web.whatsapp.com/'); // Replace with your WhatsApp number link
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to open URLs in the default browser
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
