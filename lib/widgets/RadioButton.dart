import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Number Input Field'),
        ),
        body: const Center(
          child: NumberInputField(),
        ),
      ),
    );
  }
}

class NumberInputField extends StatefulWidget {
  const NumberInputField({super.key});

  @override
  _NumberInputFieldState createState() => _NumberInputFieldState();
}

class _NumberInputFieldState extends State<NumberInputField> {
  final TextEditingController _controller = TextEditingController();
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            setState(() {
              _value = (_value - 1).clamp(0, 999); // Adjust the range as needed
              _controller.text = _value.toString();
            });
          },
        ),
        Container(
          width: 60,
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            onChanged: (value) {
              setState(() {
                _value = int.tryParse(value) ?? 0;
              });
            },
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _value = (_value + 1).clamp(0, 999); // Adjust the range as needed
              _controller.text = _value.toString();
            });
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
