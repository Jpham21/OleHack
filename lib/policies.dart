import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Policies',

      home: PoliciesPage(),
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
class PoliciesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Policies",
        ),
        body: Center(
            child: Text(
              style: TextStyle(color: Color(0xFF00ADEE), fontSize: 26, fontWeight: FontWeight.bold),
              children: [
                TextSpan(text: 'DATA',),
                TextSpan(text: 'SPACE', style: TextStyle(color: Color(0xFF002E62))),
                TextSpan(text: ' is currently offline for routine maintenance', style: TextStyle(color: Color(0xFF00ADEE))),
              ],              
              
            )
          ]
        )
      )
    );
  }
}
