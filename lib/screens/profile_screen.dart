import 'package:ChicFits/screens/logout_screen.dart';
import 'package:ChicFits/screens/privasi_screen.dart';
import 'package:flutter/material.dart';
//import 'package:my_app/screens/home_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: <Widget>[
            const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/images/icon_chichfits.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'E-Mail',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Mahasiswa',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            Divider(height: 40),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text('E-Mail', style: TextStyle(fontSize: 18)),
            ),
            //const Divider(),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Nomor Telepon', style: TextStyle(fontSize: 18)),
            ),
            //const Divider(),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Alamat', style: TextStyle(fontSize: 18)),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_sharp),
              title: Text(
                'Privasi',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrivasiScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: const Text(
                'Logout',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogoutScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
