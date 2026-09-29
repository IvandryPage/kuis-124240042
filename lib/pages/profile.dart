import 'package:flutter/material.dart';
import 'package:kuis_mobile_124240042/pages/login.dart';

class ProfilePage extends StatefulWidget {
  final String username;

  ProfilePage({super.key, required this.username});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

  final List<Color> colors = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    void logout() {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (builder) => LoginPage()),
          (route) => false);
    }

    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: colors[_selectedIndex],
              child: Icon(Icons.person, size: 44),
            ),
            const SizedBox(height: 16),
            const Text(
              'Profile',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Username: ${widget.username}'),
            const SizedBox(height: 8),
            Text(
                'Saya bersumpah mengerjakan soal kuis ini dengan jujur dan tidak melakukan kecurangan apapun itu'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8.0,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: colors[1]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: colors[2]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: colors[3]),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: logout,
              style: ElevatedButton.styleFrom(
                  backgroundColor: colors[_selectedIndex],
                  foregroundColor: Colors.white),
              child: Text("Logout"),
            )
          ],
        ),
      ),
    );
  }
}
