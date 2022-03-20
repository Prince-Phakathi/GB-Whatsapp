import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const Chats());
}

void handleClick(int item) {
  switch (item) {
    case 0:
      break;
    case 1:
      break;
  }
}

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Contacts'),
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
            padding: EdgeInsets.fromLTRB(0, 16, 5, 0),
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
            onPressed: () => launch("tel://21213123123"),
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
              const PopupMenuItem<int>(value: 1, child: Text('Mute Notifications')),
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
              const BubbleSpecialOne(
                text: 'Just thought this would  be a great way to showcase my skills',
                isSender: false,
                color: Colors.indigoAccent,
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              // DateChip(
              //   date: new DateTime(now.year, now.month, now.day - 1),
              // ),
              const SizedBox(height: 10,),
              const BubbleSpecialOne(
                text: 'We definitely looking for such Skill Sets',
                color: Color(0xFFE8E8EE),
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                seen: true,
              ),
              const SizedBox(height: 10,),
              const BubbleSpecialOne(
                text: 'Just thought this would  be a great way to showcase my skills',
                isSender: false,
                color: Colors.indigoAccent,
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              // DateChip(
              //   date: new DateTime(now.year, now.month, now.day - 1),
              // ),
              const SizedBox(height: 10,),
              const BubbleSpecialOne(
                text: 'We definitely looking for such Skill Sets',
                color: Color(0xFFE8E8EE),
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                seen: true,
              ),
              const SizedBox(height: 10,),
              const BubbleSpecialOne(
                text: 'Just thought this would  be a great way to showcase my skills',
                isSender: false,
                color: Colors.indigoAccent,
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              // DateChip(
              //   date: new DateTime(now.year, now.month, now.day - 1),
              // ),
              const SizedBox(height: 10,),
              const BubbleSpecialOne(
                text: 'We definitely looking for such Skill Sets',
                color: Color(0xFFE8E8EE),
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                seen: true,
              ),
              const SizedBox(height: 10,),
              const BubbleSpecialOne(
                text: 'Just thought this would  be a great way to showcase my skills',
                isSender: false,
                color: Colors.indigoAccent,
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              // DateChip(
              //   date: new DateTime(now.year, now.month, now.day - 1),
              // ),
              const SizedBox(height: 10,),
              const BubbleSpecialOne(
                text: 'We definitely looking for such Skill Sets',
                color: Color(0xFFE8E8EE),
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
                seen: true,
              ),
              Container(
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
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }}