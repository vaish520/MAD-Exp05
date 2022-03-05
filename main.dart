import 'package:flutter/material.dart';
import 'primary.dart';
import 'mail.dart';
	
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home Page 119A3063',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Search Page 119A3063',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Profile Page 119A3063',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationDrawer'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("Vaishnavi Singanmalli"),
              accountEmail: Text("vaishnavi@gmail.com)
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.pink,
                child: Text("SIES"),
              ),
            ),
            ListTile(
              title: const Text("Inbox"),
              leading: const Icon(Icons.mail),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mailpage()),
                );
              },
            ),
            const Divider(
              height: 0.1,
            ),
            ListTile(
              title: const Text("Primary"),
              leading: const Icon(Icons.inbox),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Primarypage()),
                );
              },
            ),
            ListTile(
              title: const Text("Social"),
              leading: const Icon(Icons.people),
            ),
            ListTile(
              title: const Text("promotions"),
              leading: const Icon(Icons.local_offer),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.purple),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.green),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
