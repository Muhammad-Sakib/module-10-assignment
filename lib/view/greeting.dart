import 'package:flutter/material.dart';

class GreetingScreen extends StatelessWidget {
  String helloWorld = "Hello, World!";
  String welcomeMessage = "Welcome to Flutter!";
  String imagePath = "assets/images/flutter_icon.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gretting App"),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "$helloWorld",
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "$welcomeMessage",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "$imagePath",
              height: 160,
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 32,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                        elevation: 0,
                        backgroundColor: Colors.green),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Button Pressed!"),
                        backgroundColor: Colors.blue[300],
                      ));
                    },
                    child: Text(
                      "Press Me",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 92, 119, 130)),
                    )))
          ],
        ),
      ),
    );
  }
}
