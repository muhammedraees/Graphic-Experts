import 'package:flutter/material.dart';
import 'signup.dart';

class UserTypeSelectionScreen extends StatefulWidget {
  @override
  _UserTypeSelectionScreenState createState() =>
      _UserTypeSelectionScreenState();
}

class _UserTypeSelectionScreenState extends State<UserTypeSelectionScreen> {
  String? userType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Color(0xFFFE5B2A), // Set the background color to 0xFFFE5B2A
        title: Text('Select User Type'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Select User Type',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/com_landskape.webp'),
                          ),
                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                userType = 'Designer';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(
                                  0xFFFE5B2A), // Set the button color to 0xFFFE5B2A
                            ),
                            child: Text(' Designer '),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('assets/com_landskape.webp'),
                          ),
                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                userType = 'Client';
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(
                                  0xFFFE5B2A), // Set the button color to 0xFFFE5B2A
                            ),
                            child: Text(' Client '),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:
            Color(0xFFFE5B2A), // Set the background color to 0xFFFE5B2A
        child: Icon(Icons.navigate_next),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => SignUpPage(),
            ),
          );
        },
      ),
    );
  }
}
