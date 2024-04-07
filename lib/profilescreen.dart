import 'package:flutter/material.dart';
// import 'main.dart';
// import 'package:network_data/services/signal_service.dart';
import 'package:network_data/services/signal_service.dart';

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
            Spacer(), // Add spacer to push Admin label to the right
            Text(
              'Admin',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(width: 16), // Add some spacing between Admin label and right edge of the screen
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
            ListTile(
              title: Text('Rewards'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                // Add navigation to the Rewards page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RewardsPage()),
                );
              },
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  'Graph Usage Over Time',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF002E62), width: 2.0),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Data Used/Total Data',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF002E62)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Data Stats',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF002E62), width: 2.0),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Current Ping',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF002E62)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Ping Stats',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF002E62), width: 2.0),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      children: [
                        Text(
                          'Signal Strength',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF002E62)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Signal Stats:',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        FutureBuilder<int>(
                          future: SignalService.fetchSignalStrength(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.waiting) {
                              return CircularProgressIndicator();
                            } else if (snapshot.hasError) {
                              return Text('Error: ${snapshot.error}');
                            } else {
                              int signalStrength = snapshot.data ?? 0;
                              return Text('Signal Strength: $signalStrength');
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF002E62), width: 2.0),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Physical Location',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF002E62)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Location Stats',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF002E62), width: 2.0),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Throughput',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF002E62)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Throughput Stats',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF002E62), width: 2.0),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Jitter',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF002E62)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Jitter Stats',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF002E62), width: 2.0),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'Interference',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF002E62)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Interference Stats',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF002E62), width: 2.0),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Network Type',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF002E62)),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Network Type Stats',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        FutureBuilder<String>(
                          future: SignalService.fetchNetworkType(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.waiting) {
                              return CircularProgressIndicator();
                            } else if (snapshot.hasError) {
                              return Text('Error: ${snapshot.error}');
                            } else {
                              String networkType = snapshot.data ?? 'Unknown';
                              return Text('Network Type: $networkType');
                            }
                          },
                        ),
                      ],
                    ),
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
}

class RewardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF00ADEE),
        title: Text(
          'CSpire Rewards',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Rewards Content Here',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                LinearProgressIndicator(
                  value: 0.5,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}