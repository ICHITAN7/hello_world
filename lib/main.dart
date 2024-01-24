import 'package:flutter/material.dart';
import 'package:hello_world/Screen/Movie/Moviepage.dart';
import 'Screen/Home/Homepage.dart';
void main() {
  runApp(const Main());
}
class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Homepage(),
    Moviepage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.black.withOpacity(0.9),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.black,
          iconTheme:const IconThemeData(
              color: Colors.red,
              size: 35
          ),
          title: const Text('THE MOVIE',style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
          actions:const [
            Padding(
              padding: EdgeInsets.only(right:8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                foregroundImage: NetworkImage('https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg'),
              ),
            ),
          ],
        ),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.red,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.local_movies),label: 'Movie'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

