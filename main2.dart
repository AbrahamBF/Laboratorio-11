import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material and Cupertino Controls',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _materialSwitchValue = false;
  bool _cupertinoSwitchValue = false;
  double _materialSliderValue = 0.0;
  double _cupertinoSliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material and Cupertino Controls'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Material Switch
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Material Switch'),
                Switch(
                  value: _materialSwitchValue,
                  onChanged: (value) {
                    setState(() {
                      _materialSwitchValue = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Cupertino Switch'),
                CupertinoSwitch(
                  value: _cupertinoSwitchValue,
                  onChanged: (value) {
                    setState(() {
                      _cupertinoSwitchValue = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Material Slider'),
                Slider(
                  value: _materialSliderValue,
                  onChanged: (value) {
                    setState(() {
                      _materialSliderValue = value;
                    });
                  },
                  min: 0,
                  max: 100,
                  divisions: 100,
                  label: _materialSliderValue.round().toString(),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Cupertino Slider'),
                CupertinoSlider(
                  value: _cupertinoSliderValue,
                  onChanged: (value) {
                    setState(() {
                      _cupertinoSliderValue = value;
                    });
                  },
                  min: 0.0,
                  max: 100.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
