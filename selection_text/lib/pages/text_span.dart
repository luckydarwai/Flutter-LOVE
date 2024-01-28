import 'package:flutter/material.dart';

class Text_Span extends StatelessWidget {
  const Text_Span({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: 'Hello ',
          style: DefaultTextStyle.of(context).style,
          children: const <TextSpan>[
            TextSpan(
                text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' world!'),
          ],
        ),
      ),
    );
  }
}
