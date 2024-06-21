import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _date = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementDate() {
    setState(() {
      _date++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(widget.title)),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: <Widget>[
              Image.asset(
                'assets/images/profile.jpg',
                height: 250,
              ),
              const Text(
                '#Name', // Placeholder for a dynamically fetched name
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 75),
              const Row(
                children: <Widget>[
                  Text(
                    '#GreetMessage', // Placeholder for a dynamically fetched greeting message
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: _incrementDate,
                    icon: const Icon(
                      Icons.date_range,
                    ),
                    label: Text("#DaysOnSite $_date"), // Placeholder for dynamically fetched days on site
                  ),
                  SizedBox(height: 150),
                ],
              ),
              const Row(
                children: <Widget>[
                  Column(
                    children: [
                      Icon(Icons.account_box_outlined),
                      Text('#Friends'), // Placeholder for dynamically fetched friends
                      SizedBox(width: 100),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.photo),
                      Text('#Photos'), // Placeholder for dynamically fetched photos
                      SizedBox(width: 100),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.add_circle),
                      Text('#Add'), // Placeholder for dynamically fetched add action
                      SizedBox(width: 100),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Container(
                color: Colors.blue,
                height: 350,
                width: 275,
                child: Column(
                  children: [
                    const Text(
                      "#BinarySearchAlgorithm", // Placeholder for dynamically fetched binary search algorithm
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton.icon(
                        onPressed: _incrementCounter,
                        icon: const Icon(
                          Icons.hotel_class_rounded,
                          size: 24.0,
                        ),
                        label: Text("$_counter #Like"), // Placeholder for dynamically fetched like count
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 50),
          Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 400,
                width: 325,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                margin: const EdgeInsets.all(20),
                transform: Matrix4.rotationZ(0.05),
                child: Center(
                  child: Text(
                    tr('under_development'),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
