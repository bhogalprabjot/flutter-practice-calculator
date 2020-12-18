import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  double n1 = 0.0;
  double n2 = 0.0;
  String result;

  void add() {
    n1 = double.parse(t1.text);
    n2 = double.parse(t2.text);
    setState(() {
      result = (n1 + n2).toString();
    });
  }

  void sub() {
    n1 = double.parse(t1.text);
    n2 = double.parse(t2.text);
    setState(() {
      result = (n1 - n2).toString();
    });
  }

  void mul() {
    n1 = double.parse(t1.text);
    n2 = double.parse(t2.text);
    setState(() {
      result = (n1 * n2).toString();
    });
  }

  void div() {
    n1 = double.parse(t1.text);
    n2 = double.parse(t2.text);
    setState(() {
      if (n2 != 0) {
        result = (n1 / n2).toString();
      } else {
        result = 'Cannot divide by zero!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            result != null ? '$result' : '',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter number"),
                  controller: t1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Enter number"),
                  controller: t2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: () => add(),
                      child: Text('+'),
                      color: Colors.redAccent,
                    ),
                    MaterialButton(
                      onPressed: () => sub(),
                      child: Text('-'),
                      color: Colors.redAccent,
                    ),
                    MaterialButton(
                      onPressed: () => mul(),
                      child: Text('*'),
                      color: Colors.redAccent,
                    ),
                    MaterialButton(
                      onPressed: () => div(),
                      child: Text('/'),
                      color: Colors.redAccent,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
