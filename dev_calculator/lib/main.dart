import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = '0';
  double _num1 = 0.0;
  double _num2 = 0.0;
  String _operand = '';
  bool _shouldReset = false;

  void _handleButtonPress(String buttonText) {
    if (_shouldReset) {
      _clear();
    }

    setState(() {
      if (buttonText == 'C') {
        _clear();
      } else if (buttonText == '=') {
        _calculate();
      } else if (buttonText == '.') {
        if (!_output.contains('.')) {
          _output += buttonText;
        }
      } else {
        _output = _output == '0' ? buttonText : _output + buttonText;
      }
    });
  }

  void _clear() {
    _output = '0';
    _num1 = 0.0;
    _num2 = 0.0;
    _operand = '';
    _shouldReset = false;
  }

  void _calculate() {
    if (_output.isNotEmpty && _operand.isNotEmpty) {
      _num2 = double.parse(_output);

      switch (_operand) {
        case '+':
          _num1 += _num2;
          break;
        case '-':
          _num1 -= _num2;
          break;
        case '*':
          _num1 *= _num2;
          break;
        case '/':
          if (_num2 != 0) {
            _num1 /= _num2;
          } else {
            _output = 'Error';
            return;
          }
          break;
      }

      _output = _num1.toString();
      _operand = '';
      _shouldReset = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.bottomRight,
              child: Text(
                _output,
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
          Divider(),
          CalculatorButtons(onButtonPressed: _handleButtonPress),
        ],
      ),
    );
  }
}

class CalculatorButtons extends StatelessWidget {
  final Function(String) onButtonPressed;

  CalculatorButtons({required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: _buttonValues.length,
      itemBuilder: (context, index) {
        return CalculatorButton(
          buttonText: _buttonValues[index],
          onButtonPressed: onButtonPressed,
        );
      },
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String buttonText;
  final Function(String) onButtonPressed;

  CalculatorButton({
    required this.buttonText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onButtonPressed(buttonText);
      },
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}

final List<String> _buttonValues = [
  '7',
  '8',
  '9',
  '/',
  '4',
  '5',
  '6',
  '*',
  '1',
  '2',
  '3',
  '-',
  '0',
  '.',
  '=',
  '+',
  'C',
];
