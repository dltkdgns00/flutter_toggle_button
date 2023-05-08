import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("toggle button study"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: _isSelected1
                      ? ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.red))
                      : ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    setState(() {
                      _isSelected1 = !_isSelected1;
                      _isSelected2 = false;
                      _isSelected3 = false;
                      _isSelected4 = false;
                    });
                  },
                  child: Text("1")),
              ElevatedButton(
                  style: _isSelected2
                      ? ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.red))
                      : ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    setState(() {
                      _isSelected1 = false;
                      _isSelected2 = !_isSelected2;
                      _isSelected3 = false;
                      _isSelected4 = false;
                    });
                  },
                  child: Text("2"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: _isSelected3
                      ? ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.red))
                      : ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    setState(() {
                      _isSelected1 = false;
                      _isSelected2 = false;
                      _isSelected3 = !_isSelected3;
                      _isSelected4 = false;
                    });
                  },
                  child: Text("3")),
              ElevatedButton(
                  style: _isSelected4
                      ? ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.red))
                      : ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    setState(() {
                      _isSelected1 = false;
                      _isSelected2 = false;
                      _isSelected3 = false;
                      _isSelected4 = !_isSelected4;
                    });
                  },
                  child: Text("4"))
            ],
          ),
          ElevatedButton(
              onPressed: () {
                print("1=${_isSelected1}");
                print("2=${_isSelected2}");
                print("3=${_isSelected3}");
                print("4=${_isSelected4}");
                print("");
              },
              child: Text(""))
        ],
      ),
    );
  }
}
