import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
                'Какой-то Челик',
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
                    "Радуеца жизни",
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
                    label: Text("Вы находитесь на сайте уже : $_date дней"),
                  ),
                  SizedBox(height: 150),
                ],
              ),
              const Row(
                children: <Widget>[
                  Column(
                    children: [
                      Icon(Icons.account_box_outlined),
                      Text("Friends"),
                      SizedBox(width: 100),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.photo),
                      Text("Photos"),
                      SizedBox(width: 100),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.add_circle),
                      Text("Add"),
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
                      "   Не знаю что написать поэтому вставлю алгоритм бинарного поиска:\n"
                          """
def bim_s(arr, target):
  left, right = 0, len(arr) - 1
  while left <= right:
    mid = (left + right) // 2
    if arr[mid] == target:
      return mid
    elif arr[mid] < target:
      left = mid + 1
    else:
      right = mid - 1
  return left
""",
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
                        label: Text("$_counter Like"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(width: 50),
          Column(
            children: <Widget>[
              Container(
                color: Colors.blue,
                height: 400,
                width: 325,
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                margin: const EdgeInsets.all(20),
                transform: Matrix4.rotationZ(0.05),
                child: const Center(
                  child: Text(
                    "В разработке",
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
