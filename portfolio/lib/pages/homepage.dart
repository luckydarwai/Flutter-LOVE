import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            // Adjust the layout based on the screen size
            bool isSmallScreen = sizingInformation.isMobile;
            double textWidth = isSmallScreen ? 300.0 : 500.0;

            return Row(
              children: [
                // Image Section
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/lucky.jpg',
                        width: isSmallScreen ? double.infinity : 300.0,
                        height: isSmallScreen ? 200.0 : double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // Text Section
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    width: textWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, I\'m Your Name',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Flutter Developer | UI/UX Enthusiast',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Welcome to my portfolio! I\'m passionate about creating awesome Flutter applications and exploring the world of UI/UX design.',
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
