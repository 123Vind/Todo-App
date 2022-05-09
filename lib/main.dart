import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double posit = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('slide Container'),
      ),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Slider(
                value: posit,
                max: 100,
                divisions: 100,
                label: posit.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    posit = value;
                  });
                },
              ),
              Positioned(
                left: posit * 8,
                child: cardCon(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cardCon extends StatefulWidget {
  const cardCon({Key? key}) : super(key: key);

  @override
  State<cardCon> createState() => _cardConState();
}

class _cardConState extends State<cardCon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(10)),
    );
  }
}
