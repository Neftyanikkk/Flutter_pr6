import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
      theme: ThemeData.dark(),
      routes: {
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
        '/screen4': (context) => Screen4(),
        '/screen5': (context) => Screen5(),
      },
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: ListView(
        children: [
          Center(child: Text('This is Screen 1')),
          ElevatedButton(
            child: Text('Go to Screen 2'),
            onPressed: () {
              Navigator.pushNamed(context, '/screen2');
            },
          ),
          ListTile(
            title: Text('Go to Screen 3'),
            onTap: () {
              Navigator.pushNamed(context, '/screen3');
            },
          ),
          ListTile(
            title: Text('Go to Screen 4'),
            onTap: () {
              Navigator.pushNamed(context, '/screen4');
            },
          ),
          ListTile(
            title: Text('Go to Screen 5'),
            onTap: () {
              Navigator.pushNamed(context, '/screen5');
            },
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: PageView(
        children: [
          Center(child: Text('This is Screen 2')),
          Screen3(),
          Screen4(),
          Screen5(),
        ],
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3.1'),
      ),
      body: Center(
        child: Text('This is Screen 3.1'),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 4.1'),
      ),
      body: Center(
        child: Text('This is Screen 4.1'),
      ),
    );
  }
}

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 5.1'),
      ),
      body: Center(
        child: Text('This is Screen 5.1'),
      ),
    );
  }
}