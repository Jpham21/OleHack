import 'package:flutter/material.dart';
//import 'package:speed_test_dart/classes/classes.dart'; 
//import 'package:speed_test_dart/speed_test_dart.dart'; 
//import 'package:syncfusion_flutter_gauges/gauges.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00ADEE),
        title: Row(
          children: [
            SizedBox(width: 8), // Add space between the menu icon and title
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(text: 'DATA',),
                  TextSpan(text: 'SPACE', style: TextStyle(color: Color(0xFF002E62))),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF00ADEE),
              ),
              child: Text(
                'Navigation Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Navigate back to the main page
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
            ExpansionTile(
              title: Text('Notifications'),
              children: [
                ListTile(
                  title: Text('Rewards'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    // Add navigation to the Rewards page
                  },
                ),
                ListTile(
                  title: Text('Progress'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    // Add navigation to the Progress page
                  },
                ),
              ],
            ),
            ListTile(
              title: Text('Policies'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Add navigation to the Policies page
              },
            ),
            ExpansionTile(
              title: Text('Settings'),
              children: [
                ListTile(
                  title: Text('Profile'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    // Add navigation to the Profile page
                  },
                ),
                ListTile(
                  title: Text('Customize App'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    // Add navigation to the Customize App page
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView( // Wrap the body with SingleChildScrollView to avoid overflow
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Large graph for Usage Over Time
              Container(
                height: 300, // Adjust height as needed
                color: Colors.blue, // Placeholder for graph
                alignment: Alignment.center,
                child: Text(
                  'Graph Usage Over Time', // Header for the graph
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              SizedBox(height: 20), // Add spacing between widgets
              // Separate boxes for Data Used/Total Data and Current Ping
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Box for Data Used/Total Data
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4, // Adjust width as needed
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF002E62), width: 2.0),
                      borderRadius: BorderRadius.circular(12.0), // Adjust border radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Data Used/Total Data',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF002E62)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  // Box for Current Ping
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4, // Adjust width as needed
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF002E62), width: 2.0),
                      borderRadius: BorderRadius.circular(12.0), // Adjust border radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Current Ping',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF002E62)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add spacing between boxes and progress bar
              // Label for Progress Bar
              Text(
                'Progress Bar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10), // Add spacing between label and progress bar
              // Thicker Progress Bar for CSpire Discounts and Rewards
              LinearProgressIndicator(
                value: 0.5, // Example value, adjust as needed
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                minHeight: 20, // Increase thickness of progress bar
              ),
              SizedBox(height: 20), // Add spacing before the arrows
              // Navigation Arrows
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_left),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPage()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_right),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPage()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Center(
        child: Text(
          'This is a new page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}