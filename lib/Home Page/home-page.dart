import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:whatsappgb_ui/Chats/chats.page.dart';
import 'package:whatsappgb_ui/Contacts/contacts.page.dart';

void main() {
  runApp(const GBWhatsapp());
}

void handleClick(int item) {
  switch (item) {
    case 0:
      break;
    case 1:
      break;
  }
}

class GBWhatsapp extends StatelessWidget {
  const GBWhatsapp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'WhatsappGB'),
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 5,
    child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: InkWell(
          onTap: () {
            // print("Title Text CLicked");
          },
          child: Text(
              widget.title),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.wifi),
            color: Colors.white,
            onPressed: () {
              //print("filled background"); padding: const EdgeInsets.all(8.0),
            },
          ),
          IconButton(
            icon: const Icon(Icons.brightness_7),
            color: Colors.white,
            onPressed: () {},
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
              const PopupMenuItem<int>(value: 1, child: Text('Restart GBWhatsApp')),
              const PopupMenuItem<int>(value: 1, child: Text('Message a number')),
              const PopupMenuItem<int>(value: 1, child: Text('New group')),
              const PopupMenuItem<int>(value: 1, child: Text('New broadcast')),
              const PopupMenuItem<int>(value: 1, child: Text('WhatsApp Web')),
              const PopupMenuItem<int>(value: 1, child: Text('Starred messages')),
              const PopupMenuItem<int>(value: 1, child: Text('Settings')),
            ],
          ),
        ],
        bottom: const TabBar(
          tabs: [
            Text(
              'Camera',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
            Text(
              'CHATS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
            Text(
              'GROUPS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            Text(
              'STATUS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
            Text(
              'CALLS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            )
          ],
        ),
      ),
      body: Container(
        // width: MediaQuery.of(context).size.width,
        color: Colors.white54,
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width,
        // height: data.size.height / 1,
        // width: data.size / 2,
        child: TabBarView(
          children: [
            const Icon(Icons.camera),
            ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Chats()
                        )
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/Images/10.jpg'),
                                radius: 30,
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 15,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 150, 0),
                                child: Text(
                                  'The Wife',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),

                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text(' so sick of your cheating ass,Im done'),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 10,),
                              Text('15:30'),
                              SizedBox(height: 20,),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Text(
                                  '2',
                                ),
                                radius: 10,
                              ),
                            ],
                          ),
                        ]),
                  ),
                  const Divider(
                    height: 10.0,
                  ),
                  GestureDetector(
                    // onTap: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Chats())),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: const [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/Images/02.jpg'),
                                radius: 30,
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 15,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 70, 0),
                                child: Text(
                                  'Baby Mama Drama',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),

                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text('Lets fix things for the sake of the kids'),
                              ),
                            ],
                          ),
                          Column(
                            children: const [
                              SizedBox(height: 10,),
                              Text('15:37'),
                              SizedBox(height: 20,),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Text(
                                  '1',
                                ),
                                radius: 10,

                              ),
                            ],
                          ),
                        ]),
                  ),
                  const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/12.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 130, 0),
                              child: Text(
                                'Side Piece',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('You dont care about me!                  '),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('15:41'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '7',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                   const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/03.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 140, 0),
                              child: Text(
                                'Main Girl',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('You the bestest really,i love for that'),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('15:45'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '1',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                   const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/01.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 80, 0),
                              child: Text(
                                'Terry Cute Yellow',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Im wasting my time with you Prince'),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('15:33'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '2',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                  const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/05.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 160, 0),
                              child: Text(
                                'Switch',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                              child: Text('Ehh boi she caught feels this girl,hai'),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('16:10'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '1',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                  const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/06.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 160, 0),
                              child: Text(
                                'Cute Ex',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Yeah i Know,i miss you more hubby'),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('16:30'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '2',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                  const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/08.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 140, 0),
                              child: Text(
                                'Vha Venda',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('You late bro,lets go Simon waiting...'),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('07:58'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '4',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                  const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/09.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 150, 0),
                              child: Text(
                                'LastBorn',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text('already sent  the example,theres a link'),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('17:30'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '2',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                  const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/07.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 140, 0),
                              child: Text(
                                'My SBWL',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text('just be Straight up,what do you want'),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('19:00'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '1',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                  const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/04.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 120, 0),
                              child: Text(
                                'Thando Cute',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text('Kinda enjoyed them vibes,you guys Lit'),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('01:30'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '6',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                  const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/11.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 120, 0),
                              child: Text(
                                'Ntwana Yam',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Text('My nikka this we dating imagine lol.....')),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('02:33'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '2',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                ]),
            ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/11.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 55, 0),
                              child: Text(
                                'Idol Consulting Devs',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Andile: Deadlines must be met guys '),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('15:30'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '96',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                  const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/14.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 65, 0),
                              child: Text(
                                'Flutter Developers',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('+27 76 129 8904 was Added              '),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('15:37'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '1',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                  const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/07.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 80, 0),
                              child: Text(
                                'Jesus & The Gang',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('Glen Fiddich: Im leaving this group Lol '),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('15:41'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '38',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                  const Divider(
                    height: 10.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/Images/11.jpg'),
                              radius: 30,
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 15,),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                              child: Text(
                                'Ekurhuleni(Idol)',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),

                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('+27 71 625 6634 left                                 '),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(height: 10,),
                            Text('15:45'),
                            SizedBox(height: 20,),
                            CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Text(
                                '1',
                              ),
                              radius: 10,

                            ),
                          ],
                        ),
                      ]),
                ]),
            Container(
              color: const Color(0xfff2f2f2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    color: Colors.white,
                    elevation: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: ListTile(
                        leading: Stack(
                          children: <Widget>[
                            const CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                  "assets/Images/11.jpg"),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 1.0,
                              child: Container(
                                height: 20,
                                width: 20,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            )
                          ],
                        ),
                        title: const Text(
                          "My Status",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text("Tap to add status update"),
                      ),

                    ),
                  ),
                  const Divider(
                    height: 10.0,
                  ),
                  const Text("Recently Updated",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    height: 10.0,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.white,
                      child: ListView(
                        children: const <Widget>[
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                  "assets/Images/11.jpg"),
                            ),
                            title: Text(
                              "Prince Phakathi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Today, 20:16 PM"),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
                          ),
                          Divider(
                            height: 10.0,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                  "assets/Images/05.jpg"),
                            ),
                            title: Text(
                              "Switch",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Today, 20:16 PM"),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
                          ),
                          Divider(
                            height: 10.0,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                  "assets/Images/08.jpg"),
                            ),
                            title: Text(
                              "Vha Venda",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Today, 20:16 PM"),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
                          ),
                          Divider(
                            height: 10.0,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                  "assets/Images/07.jpg"),
                            ),
                            title: Text(
                              "My SBWL",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Today, 20:16 PM"),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
                          ),
                          Divider(
                            height: 10.0,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                  "assets/Images/04.jpg"),
                            ),
                            title: Text(
                              "Thando Cute",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Today, 20:16 PM"),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
                          ),
                          Divider(
                            height: 10.0,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                  "assets/Images/03.jpg"),
                            ),
                            title: Text(
                              "Main Girl",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Today, 20:16 PM"),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
                          ),
                          Divider(
                            height: 10.0,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                  "assets/Images/02.jpg"),
                            ),
                            title: Text(
                              "Baby Mama Drama",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Today, 20:16 PM"),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Icon(Icons.directions_bike),
            Container(
              color: const Color(0xfff2f2f2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Container(
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
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Switch",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: IconButton(
                                    icon: const Icon(Icons.call_missed),
                                    color: Colors.red,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                                const Text("Today, 20:16 PM"),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: IconButton(

                                    icon: const Icon(Icons.call),
                                    color: Colors.grey,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                              ],
                            ),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
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
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Thando Cute",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: IconButton(
                                    icon: const Icon(Icons.call_missed),
                                    color: Colors.red,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                                const Text("Today, 20:16 PM"),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: IconButton(

                                    icon: const Icon(Icons.videocam_rounded),
                                    color: Colors.grey,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                              ],
                            ),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
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
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Vha Venda",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: IconButton(
                                    icon: const Icon(Icons.call_missed),
                                    color: Colors.red,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                                const Text("Today, 20:16 PM"),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: IconButton(

                                    icon: const Icon(Icons.call),
                                    color: Colors.grey,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                              ],
                            ),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
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
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Baby Mama Drama",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: IconButton(
                                    icon: const Icon(Icons.call_missed),
                                    color: Colors.red,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                                const Text("Today, 20:16 PM"),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: IconButton(

                                    icon: const Icon(Icons.videocam_rounded),
                                    color: Colors.grey,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                              ],
                            ),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
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
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "Main Girl",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: IconButton(
                                    icon: const Icon(Icons.west),
                                    color: Colors.green,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                                const Text("Today, 20:16 PM"),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: IconButton(

                                    icon: const Icon(Icons.videocam_rounded),
                                    color: Colors.grey,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                              ],
                            ),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => StoryPageView())),
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
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text(
                                "The Wife",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: IconButton(
                                    icon: const Icon(Icons.west),
                                    color: Colors.green,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                                const Text("Today, 20:16 PM"),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: IconButton(

                                    icon: const Icon(Icons.call),
                                    color: Colors.grey,
                                    onPressed: () {
                                      //print("filled background");
                                    },
                                  ),
                                ),
                              ],
                            ),
                            // onTap: () => Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Chats())),
                          ),
                          const Divider(
                            height: 10.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Builder(
        builder: (context) => FabCircularMenu(
          alignment: Alignment.bottomRight,
          ringColor: Colors.green.withAlpha(25),
          ringDiameter: 500.0,
          ringWidth: 150.0,
          fabSize: 64.0,
          fabElevation: 8.0,
          fabIconBorder: const CircleBorder(),
          fabColor: Colors.blueGrey,
          fabOpenIcon: const Icon(Icons.add, color: Colors.white),
          fabCloseIcon: const Icon(Icons.close, color: Colors.white),
          fabMargin: const EdgeInsets.all(16.0),
          animationDuration: const Duration(milliseconds: 800),
          animationCurve: Curves.easeInOutCirc,
          onDisplayChange: (isOpen) {},
          children: <Widget>[
            RawMaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Contacts()));
              },
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: const Icon(Icons.message
                  , color: Colors.blueGrey),
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Contacts()));
              },
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: const Icon(Icons.alarm, color: Colors.blueGrey),
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Contacts()));
              },
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: const Icon(Icons.article, color: Colors.blueGrey),
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Contacts()));
              },
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(24.0),
              child: const Icon(Icons.format_paint, color: Colors.blueGrey),
            )
          ],
        ),
      ),

    )));
  }
}
