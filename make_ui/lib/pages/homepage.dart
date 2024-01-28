import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Text("Skip"),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;

          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      height: screenHeight *
                          0.1), // Adjust top padding based on screen height
                  Container(
                    child: Image.asset(
                      'images/logo.png',
                      width: screenWidth *
                          0.6, // Adjust image width based on screen width
                    ),
                  ),
                  SizedBox(
                      height: screenHeight *
                          0.04), // Adjust spacing based on screen height
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Enjoy Your\n Life With ",
                          style: TextStyle(
                              fontSize: screenWidth *
                                  0.04), // Adjust text size based on screen width
                        ),
                        TextSpan(
                          text: "Drmz",
                          style: TextStyle(
                            fontSize: screenWidth *
                                0.04, // Adjust text size based on screen width
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: screenHeight *
                          0.035), // Adjust spacing based on screen height
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_circle_right_rounded,
                      size: screenWidth *
                          0.2, // Adjust icon size based on screen width
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
