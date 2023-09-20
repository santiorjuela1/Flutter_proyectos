import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PARCIAL',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test mobile app'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(20),
                  child: const Column(
                    children: [
                      Text(
                        'Small Title',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Medium Title',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Big Title',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: const Text('Option #1'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Option #2'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Option #3'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Center(
            child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  width: 300,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  width: 200,
                  height: 50,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                  width: 300,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 40, 10, 20),
                  child: const Text(
                    'Ipsum labore cillum laborum irure veniam amet anim mollit id officia. Elit esse labore do velit reprehenderit sit irure. Sunt occaecat irure ex aliquip ex in proident magna reprehenderit nulla Lorem.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                      child: const Icon(
                        Icons.android,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: const Icon(
                        Icons.apple,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: const Text(
                    'Quis est labore minim et tempor ad do. Irure culpa eu sint amet voluptate ipsum aliqua consectetur nulla consequat sint. Eu id exercitation officia elit proident veniam deserunt est minim.',
                    textAlign: TextAlign.center,
                  ),
                ),
                const Text(
                  'END OF APP',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
