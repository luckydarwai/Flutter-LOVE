import 'package:flutter/material.dart';
import 'pages/selection_text.dart';

void main() => runApp(const MainPage());

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('Flutter Love')),
      body:const Column(
        children: <Widget>[
         ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectionContainerDisabledExampleApp())), child: Text("Selection Text")) 
        ],
      ),
    ));
  }
}
