import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Detect if dark mode is enabled
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    // Set text, AppBar, and icon colors based on the theme
    final textColor = isDarkMode ? Colors.white : Colors.black;
    final nameColor = isDarkMode ? Colors.yellowAccent[400] : Colors.pink[700];
    final appBarColor = isDarkMode ? Colors.grey[850] : Colors.pink[100]; // Change AppBar color based on theme
    final appBarTextColor = isDarkMode ? Colors.yellow[700] : Colors.pink[800]; // AppBar text color for dark mode
    final featherIconColor = isDarkMode ? Colors.yellowAccent[100] : Colors.pinkAccent; // Feather icon color based on theme

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Personal Information',
          style: TextStyle(
            color: appBarTextColor, // Dynamic AppBar text color
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: appBarColor, // Dynamic AppBar background color
      ),
      backgroundColor: isDarkMode ? Colors.grey[900] : Colors.pink[50], // Background color changes with mode
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: '',
                style: TextStyle(fontSize: 20, color: textColor), // Default text color adapts to theme
                children: <TextSpan>[
                  TextSpan(
                    text: 'Afrina Noor', // Replace with your actual name
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: nameColor, // Name color changes based on theme
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Feather Icon
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                FontAwesomeIcons.featherPointed,
                color: featherIconColor, // Dynamic icon color based on theme
                size: 30,
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: textColor),
                children: [
                  TextSpan(
                    text: 'Date of Birth: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: '18th May, 2001'),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: textColor),
                children: [
                  TextSpan(
                    text: 'Address: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'Chandgaon, Chittagong, Bangladesh'),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: textColor),
                children: [
                  TextSpan(
                    text: 'Fathers Name: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'Md. Nurul Absar'),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: textColor),
                children: [
                  TextSpan(
                    text: 'Mothers Name: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'Shahanaj Begum'),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: textColor),
                children: [
                  TextSpan(
                    text: 'Blood Group: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'A+'),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: textColor),
                children: [
                  TextSpan(
                    text: 'Religion: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'Islam'),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: textColor),
                children: [
                  TextSpan(
                    text: 'Nationality: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'Bangladeshi'),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: textColor),
                children: [
                  TextSpan(
                    text: 'Marital Status: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'Unmarried'),
                ],
              ),
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 15, color: textColor),
                children: [
                  TextSpan(
                    text: 'Hobbies: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'Travelling, Photography, Designing'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
