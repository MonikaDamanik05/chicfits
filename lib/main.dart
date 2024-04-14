import 'package:ChicFits/screens/hijab_screen.dart';
import 'package:ChicFits/screens/masuk_screen.dart';
import 'package:ChicFits/screens/non_hijab_screen.dart';
import 'package:ChicFits/screens/pria_screen.dart';
import 'package:ChicFits/screens/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ChicFits/screens/contact_us_screen.dart';
import 'package:ChicFits/screens/beranda_screen.dart';
import 'package:ChicFits/screens/news_screen.dart';
import 'package:ChicFits/screens/notifikasi_screen.dart';
import 'package:ChicFits/screens/profile_screen.dart';
import 'package:ChicFits/screens/crud.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const SplashScreenPage(),
      routes: {
        '/news-screen': (context) => const NewsScreen(),
        '/masuk-screen': (context) => LoginScreen(),
        '/beranda-screen': (context) => const HomeScreen(),
        '/hijab-screen': (context) => HijabProduk(),
        '/non-hijab-screen': (context) => NonHijabScreen(),
        '/pria-screen': (context) => PriaProduk(),
      },
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
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  final List<String> _appBarTitles = const [
    'Home',
    'Notifikasi',
    'Profile',
  ]; // List of titles corresponding to each screen

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_selectedIndex]),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: const EdgeInsets.only(top: 80),
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Image.asset(
                  'assets/images/icon_chicfits.png', // Ubah path sesuai dengan lokasi gambar logo
                  height: 100,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Tutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.api),
              title: Text('Latihan API'),
              onTap: () {
                Navigator.pop(context); // Tutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewsScreen()),
                );
              },
            ),
            Builder(
              builder: (BuildContext context) {
                return ExpansionTile(
                  leading: Icon(Icons.category),
                  title: Text('Categories'),
                  children: [
                    ListTile(
                      title: Text('Pakaian Hijab'),
                      onTap: () {
                        Navigator.pop(context); // Tutup drawer
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HijabProduk()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Pakaian Non-Hijab'),
                      onTap: () {
                        Navigator.pop(context); // Tutup drawer
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NonHijabScreen()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text('Pakaian Pria'),
                      onTap: () {
                        Navigator.pop(context); // Tutup drawer
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PriaProduk()),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context); // Tutup drawer
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProfileScreen()),
                );
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.pop(context); // Tutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KontakScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.heart_broken),
              title: Text('Latian CRUD'),
              onTap: () {
                Navigator.pop(context); // Tutup drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NoteScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
