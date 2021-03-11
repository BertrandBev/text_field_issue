import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _str = "";

  @override
  Widget build(BuildContext context) {
    final textField = TextField(
      maxLines: 2,
      onChanged: (str) {
        setState(() => this._str = str);
      },
    );

    final text = Text(
      _str.replaceAll(" ", "•"),
      style: TextStyle(fontSize: 16.0),
    );

    return Scaffold(
      appBar: AppBar(title: Text("TextField example")),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textField,
            SizedBox(height: 8.0),
            text,
          ],
        ),
      ),
    );
  }
}
