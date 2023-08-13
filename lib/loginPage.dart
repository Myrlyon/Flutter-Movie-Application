import 'package:flutter/material.dart';
import 'package:flutter_movie_application/homePage.dart';
import './widget/widget.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key, required String title});

  @override
  State<loginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myText("Email", false),
              myText("Password", true),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const homePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Color.fromARGB(255, 67, 117, 255),
                  minimumSize: Size(150, 50),
                ),
                child: Text(
                  'Sign In',
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.grey[900],
                  minimumSize: Size(150, 50),
                ),
                child: Text(
                  'Sign Up',
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
