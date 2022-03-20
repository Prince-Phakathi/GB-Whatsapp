import 'package:flutter/material.dart';
import 'package:whatsappgb_ui/New-Chats/new-chats.page.dart';

void main() {
  runApp(const Contacts());
}

void handleClick(int item) {
  switch (item) {
    case 0:
      break;
    case 1:
      break;
  }
}

class Contacts extends StatelessWidget {
  const Contacts({Key? key}) : super(key: key);

  // This widget is the root of your application.
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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 100, 0),
            child: Text('Select Contact',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.white,
            onPressed: () {},
          ),
          PopupMenuButton<int>(
            onSelected: (item) => handleClick(item),
            itemBuilder: (context) => [
              const PopupMenuItem<int>(value: 0, child: Text('PrinceMods')),
              const PopupMenuItem<int>(value: 1, child: Text('Invite a friend')),
              const PopupMenuItem<int>(value: 1, child: Text('Contacts')),
              const PopupMenuItem<int>(value: 1, child: Text('Refresh')),
              const PopupMenuItem<int>(value: 1, child: Text('Help')),
            ],
          ),
        ],
      ),
      body:  Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            // new Divider(
            //   height: 10.0,
            // ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/05.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Switch",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/04.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Thando Cute",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/01.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Terry Cute Yellow",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/12.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Side Piece",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/02.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Baby Mama Drama",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/03.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Main Girl",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/06.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Cute Ex",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/10.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "The Wife",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/09.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "LastBorn",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/08.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Vha Venda",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/11.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Zipho ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/11.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Zolile",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/11.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Skhumba",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/11.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Glen Fiddich",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/07.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Olady",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      "assets/Images/11.jpg"),
                ),
              ),
              title: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Text(
                  "Prince Phakathi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: const [
                  Text("Hi there WhatsApp is using me!!!"),
                ],
              ),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewChats())),
            ),
            const Divider(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
