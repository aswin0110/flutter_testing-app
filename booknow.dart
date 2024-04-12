import 'package:flutter/material.dart';

class booknow extends StatefulWidget {
  const booknow({super.key});

  @override
  State<booknow> createState() => _booknowState();
}

class _booknowState extends State<booknow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Bus Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BusBookingPage(),
    );
  }
}

class BusBookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Booking'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Search for buses',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter source',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter destination',
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'search');
              },
              child: Text('Searchbuses'),


            ),
          ],
        ),
      ),
    );
  }
}
