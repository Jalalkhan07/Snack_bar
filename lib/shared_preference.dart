import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPerference extends StatefulWidget {
  const SharedPerference({super.key});

  @override
  State<SharedPerference> createState() => _SharedPerferenceState();
}

class _SharedPerferenceState extends State<SharedPerference> {

  int _counter = 0;

  @override
  void initState(){
    super.initState();
    _loadCounter();
  }
  // Loading Counter Value On Start
  void _loadCounter() async{
    final prefs =await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);

    });
  }

  // Incremating Counter After click
  void _incrementCounter() async{
    final prefs =await  SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Prefernce'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',

        child: Icon(Icons.add),
      ),
    );
  }
}
