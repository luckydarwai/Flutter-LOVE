import 'package:flutter/material.dart';
import 'package:portfolio/pages/homepage.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortfolioApp(),
    );
  }
}

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({Key? key}) : super(key: key);
  @override
  PortfolioAppState createState() => PortfolioAppState();
}

class PortfolioAppState extends State<PortfolioApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final ScrollController _scrollController = ScrollController();

  void _navigateToSection(int index) {
    Navigator.pop(context);
    _scrollToSection(index);
  }

  void _scrollToSection(int index) {
    double sectionHeight = 800.0; // Adjust the height of each section as needed
    _scrollController.animateTo(
      sectionHeight * index,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Center(child: Text('Welcome to My Portfolio')),
      ),
      drawer: NavigationDrawer(navigateToSection: _navigateToSection),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: <Widget>[
            HomePage(),
            ServicesSection(),
            ProjectsSection(),
            SocialSection(),
            AboutUsSection(),
          ],
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  final Function(int)
      navigateToSection; // prototype of fuction is declared here

  const NavigationDrawer({Key? key, required this.navigateToSection});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => navigateToSection(0),
          ),
          ListTile(
            leading: Icon(Icons.design_services_rounded),
            title: Text('Services'),
            onTap: () => navigateToSection(1),
          ),
          ListTile(
            leading: Icon(Icons.details),
            title: Text('Projects'),
            onTap: () => navigateToSection(2),
          ),
          ListTile(
            leading: Icon(Icons.connect_without_contact),
            title: Text('Social'),
            onTap: () => navigateToSection(3),
          ),
          ListTile(
            leading: Icon(Icons.heat_pump_rounded),
            title: Text('About Me'),
            onTap: () => navigateToSection(4),
          ),
        ],
      ),
    );
  }
}

// class HomeSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 800, // Adjust the height as needed
//       color: Colors.blue,
//       child: Center(
//         child: Text('Home Section'),
//       ),
//     );
//   }
// }

class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800, // Adjust the height as needed
      color: Colors.green,
      child: Center(
        child: Text('Services Section'),
      ),
    );
  }
}

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800, // Adjust the height as needed
      color: Colors.orange,
      child: Center(
        child: Text('Projects Section'),
      ),
    );
  }
}

class SocialSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800, // Adjust the height as needed
      color: Colors.purple,
      child: Center(
        child: Text('Social Section'),
      ),
    );
  }
}

class AboutUsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800, // Adjust the height as needed
      color: Colors.red,
      child: Center(
        child: Text('About Us Section'),
      ),
    );
  }
}
