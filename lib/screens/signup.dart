import 'package:flutter/material.dart';
import 'login.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  bool _isObscured = true; // Initially hide the password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Color(0xFFFE5B2A),
      ),
      
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Create an Account',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              // TextFormField(
              //   controller: usernameController,
              //   decoration: InputDecoration(
              //     labelText: 'Username',
              //     prefixIcon: Icon(Icons.person),
              //     border: OutlineInputBorder(),
              //   ),
              // ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),
              
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isObscured = !_isObscured;
                      });
                    },
                    child: Icon(
                      _isObscured
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
                obscureText: _isObscured,
              ),
              SizedBox(height: 20),
              // TextFormField(
              //   controller: phoneNumberController,
              //   decoration: InputDecoration(
              //     labelText: 'Phone Number',
              //     prefixIcon: Icon(Icons.phone),
              //     border: OutlineInputBorder(),
              //   ),
              //   keyboardType: TextInputType.phone,
              // ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    // Change the button color to 0xFFFE5B2A
                    primary: Color(0xFFFE5B2A),
                  ),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account? "),
                  TextButton(
                    onPressed: () {
                      // Add login page navigation logic here
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Log In',
                      // Change the text color to 0xFFFE5B2A
                      style: TextStyle(color: Color(0xFFFE5B2A)),
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




// import 'package:flutter/material.dart';
// import 'login.dart';

// class SignUpPage extends StatefulWidget {
//   @override
//   _SignUpPageState createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   TextEditingController usernameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController phoneNumberController = TextEditingController();
//   bool _isObscured = true; // Initially hide the password

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//   title: Text(
//     'Sign Up',
//     style: TextStyle(
//       color: Color(0xFFFE5B2A), // Set the text color to orange
//     ),
//   ),
//   backgroundColor: Color.fromARGB(255, 41, 39, 39),
// ),
//       backgroundColor: Color.fromARGB(255, 8, 8, 8),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               SizedBox(height: 20),
//               Text(
//                 'Create an Account',
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 245, 241, 240)),
//               ),
//               SizedBox(height: 30),
//               TextFormField(
//                 controller: emailController,
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   prefixIcon: Icon(Icons.email, color: Color.fromARGB(255, 124, 122, 122)),
//                   labelStyle: TextStyle(color: Color(0xFFFE5B2A)),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color.fromARGB(255, 124, 122, 122)),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color.fromARGB(255, 124, 122, 122)),
//                   ),
//                 ),
//                 keyboardType: TextInputType.emailAddress,
//               ),
//               SizedBox(height: 20),
//               TextFormField(
//                 controller: passwordController,
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   prefixIcon: Icon(Icons.lock, color: Color.fromARGB(255, 124, 122, 122)),
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _isObscured = !_isObscured;
//                       });
//                     },
//                     child: Icon(
//                       _isObscured
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                           color: Color(0xFFFE5B2A),
//                     ),
//                   ),
//                   labelStyle: TextStyle(color: Color(0xFFFE5B2A)),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color.fromARGB(255, 124, 122, 122)),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Color.fromARGB(255, 124, 122, 122)),
//                   ),
//                 ),
//                 obscureText: _isObscured,
//               ),
//               SizedBox(height: 30),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => LoginPage(),
//                       ),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(vertical: 15),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30.0),
//                     ),
//                     // Change the button color to 0xFFFE5B2A
//                     primary: Color(0xFFFE5B2A),
//                   ),
//                   child: Text(
//                     'Sign Up',
//                     style: TextStyle(fontSize: 18, color: Colors.white), // Text color for the button
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text("Already have an account? ",style: TextStyle(color: Color.fromARGB(255, 124, 122, 122)),),
//                   TextButton(
//                     onPressed: () {
//                       // Add login page navigation logic here
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => LoginPage(),
//                         ),
//                       );
//                     },
//                     child: Text(
//                       'Log In',
//                       // Change the text color to 0xFFFE5B2A
//                       style: TextStyle(color: Color(0xFFFE5B2A)),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
