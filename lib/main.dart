// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    title: "nislearn",
    theme: ThemeData(primarySwatch: Colors.red),
    debugShowCheckedModeBanner: false,
    // ignore: prefer_const_constructors
    home: Homepage(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nischal"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (BuildContext contex) {
            return [PopupMenuItem(child: Text("helo"))];
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("hdhdh"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homepage()),
          );
        },
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 500,
                width: 70,
                color: Color.fromARGB(255, 146, 32, 32),
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20),
              ),
              Container(
                height: 200,
                width: 40,
                color: Color.fromARGB(255, 112, 25, 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  final List<String> imgforslider = [
    "https://hddesktopwallpapers.in/wp-content/uploads/2015/09/goose-images.jpg",
    "https://hddesktopwallpapers.in/wp-content/uploads/2015/09/goose-images.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nischal Commerce"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Color.fromARGB(255, 141, 19, 13),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Favorites',
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: 'Music',
            icon: Icon(Icons.music_note),
          ),
          BottomNavigationBarItem(
            label: 'Places',
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            label: "Hi",
            icon: Icon(Icons.library_books),
          ),
        ],
      ),
      body: CarouselSlider(
        options: CarouselOptions(
          height: 100.0,
          autoPlay: true,
        ),
        items: imgforslider.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Image.network("$i"));
            },
          );
        }).toList(),
      ),
    );
  }
}
