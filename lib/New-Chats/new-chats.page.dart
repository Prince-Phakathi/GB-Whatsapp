import 'package:flutter/material.dart';

void main() {
  runApp(const NewChats());
}

void handleClick(int item) {
  switch (item) {
    case 0:
      break;
    case 1:
      break;
  }
}

class NewChats extends StatelessWidget {
  const NewChats({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Chat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/Images/02.jpg'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 35, 0),
            child: Text('Prince Phakathi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.videocam_rounded),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.call),
            color: Colors.white,
            onPressed: () {},
          ),
          PopupMenuButton<int>(
            onSelected: (item) => handleClick(item),
            itemBuilder: (context) =>
            [
              const PopupMenuItem<int>(value: 0, child: Text('PrinceMods')),
              const PopupMenuItem<int>(value: 1, child: Text('View Contacts')),
              const PopupMenuItem<int>(
                  value: 1, child: Text('Media, Links, and Docs')),
              const PopupMenuItem<int>(value: 1, child: Text('Search')),
              const PopupMenuItem<int>(
                  value: 1, child: Text('Mute Notifications')),
              const PopupMenuItem<int>(value: 1, child: Text('WallPaper')),
              const PopupMenuItem<int>(value: 1, child: Text('Voice Changer')),
              const PopupMenuItem<int>(value: 1, child: Text('More')),
            ],
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 580, 0, 0),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      const SizedBox(width: 8.0),
                      Icon(Icons.insert_emoticon,
                          size: 30.0, color: Theme
                              .of(context)
                              .hintColor),
                      const SizedBox(width: 8.0),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Type a message',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.attach_file,
                          size: 30.0, color: Theme
                              .of(context)
                              .hintColor),
                      const SizedBox(width: 8.0),
                      Icon(Icons.camera_alt,
                          size: 30.0, color: Theme
                              .of(context)
                              .hintColor),
                      const SizedBox(width: 8.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }}