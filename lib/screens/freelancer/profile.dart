import 'package:flutter/material.dart';

import 'edit_profile.dart';

class FreelancerProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfilePage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/com_landskape.webp'), // Replace with your profile image
                radius: 60,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'John Doe', // Freelancer's name
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Web Developer', // Freelancer's job title
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'About Me',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'I am a passionate web developer with 5 years of experience in building web applications. My expertise includes...',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Portfolio',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // List of portfolio items
            PortfolioItem(
              title: 'Project 1',
              description: 'Description of Project 1',
              imageUrl: 'assets/com_landskape.webp', // Replace with your image
            ),
            PortfolioItem(
              title: 'Project 2',
              description: 'Description of Project 2',
              imageUrl: 'assets/com_landskape.webp', // Replace with your image
            ),
            // Add more portfolio items as needed
          ],
        ),
      ),
    );
  }
}

class PortfolioItem extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  PortfolioItem({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 8),
        Image.asset(
          imageUrl,
          height: 200, // Adjust the height as needed
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
