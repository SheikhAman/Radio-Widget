import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RadioWidget(),
    );
  }
}

class RadioWidget extends StatefulWidget {
  const RadioWidget({Key? key}) : super(key: key);

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  int _radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Row(
          children: <Widget>[
            Text(
              'Radio',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            SizedBox(
              width: 40,
            ),
            Row(
              children: [0, 1, 2, 3]
                  .map((int index) => Radio<int>(
                        activeColor: Colors.black,
                        value: index,
                        groupValue: _radioVal,
                        onChanged: (int? value) {
                          setState(() => _radioVal = value!);
                        },
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
