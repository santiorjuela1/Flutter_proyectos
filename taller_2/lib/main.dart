import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice for test',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Practice for test',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: Container(
                  alignment: Alignment.center, // Center-align the content
                  margin: const EdgeInsets.all(20), // Add vertical margin
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Center the text horizontally
                    children: [
                      Text(
                        'IM THE TITLE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'IM THE SUBTITLE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'IM A NORMAL TEXT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 3'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 4'),
                onTap: () {
                  Navigator.pop(context);
                },
              )
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
                    margin: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 200,
                          height: 100,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 200,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 200,
                          height: 100,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ),
                  const Text(
                    'lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.access_time),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.key),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(Icons.camera),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Select alarm',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 172, 236, 174)),
                        ),
                        child: const Text(
                          'Select key',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text('Select camera',
                            style: TextStyle(
                              color: Colors.green,
                            )),
                      ),
                    ],
                  ),
                  const ListTile(
                    title: Text('Element #0'),
                  ),
                  const ListTile(
                    title: Text('Element #1'),
                  ),
                  const ListTile(
                    title: Text('Element #2'),
                  ),
                  const ListTile(
                    title: Text('Element #3'),
                  ),
                  const Text(
                      'lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget. Donec euismod, nisl eget aliquam ultricies, nisl nisl aliquet nisl, eget aliquam nisl nisl eget.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      )),
                  const Text(
                    'END OF APLICATION',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
