import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
// import 'package:intro_slider/slide_object.dart';

import 'signup.dart';
import 'usertype.dart';

void main() {
  runApp(MaterialApp(
    home: OnboardingPage(),
  ));
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  // Sample onboarding data
  final List<Slide> slides = [
    Slide(
      title: "Find Freelancers",
      description: "Browse and hire talented freelancers for your projects.",
      backgroundColor: Colors.grey,
      pathImage: 'assets/com_landskape.webp',
    ),
    Slide(
      title: "Offer Jobs",
      description: "Post job listings and connect with skilled freelancers.",
      backgroundColor: Colors.grey,
      pathImage: 'assets/com_landskape.webp',
    ),
    Slide(
      title: "Easy Communication",
      description: "Chat and collaborate with freelancers in real-time.",
      backgroundColor: Colors.grey,
      pathImage: 'assets/com_landskape.webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroSlider(
        slides: slides,
        onDonePress: () {
          // Navigate to the next screen when the "Get Started" button is pressed
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserTypeSelectionScreen(),
            ),
          );
        },
      ),
    );
  }
}
