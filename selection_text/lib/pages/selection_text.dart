import 'package:flutter/material.dart';

class SelectionContainerDisabledExampleApp extends StatelessWidget {
  const SelectionContainerDisabledExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('SelectionContainer.disabled Sample')),
        body: const Center(
          child: SelectionArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Selectable text Hi! i am using there'),
                SelectionContainer.disabled(child: Text('Non-selectable text')),
                Text('Selectable text Hi! i am using there'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
