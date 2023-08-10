import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('QUIZ APP'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/download8.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'QUIZ TIME',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 24,
                width: double.infinity,
              ),
              Text(
                'We are creative , Enjoy our app',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.start),
              label: 'start',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restore),
              label: 'back',
            ),
          ],
        ),
      ),
    );
  }
}
