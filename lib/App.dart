import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kombucha Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(title: 'Kombucha Calculator'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var total = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 50,
              decoration: InputDecoration(
                  border: InputBorder.none, labelText: 'totalt / dL'),
              onChanged: (text) => setState(() => total = int.parse(text)),
            ),
            Text('startvätska: ${total / 5} dL'),
            Text('vatten: ${total / 5 * 4} dL'),
            Text('te: ${total / 5} tsp'),
            Text('socker: ${total / 5} dL'),
          ],
        ),
      ),
    );
  }
}
