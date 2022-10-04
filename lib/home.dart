import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter Movie - M-190378"),
        backgroundColor: Colors.orange,
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.amber,
            ),
            onPressed: () {},
          )
        ],
      ),


      
      drawer: new Drawer(
          child: new ListView(
        children: [
          new DrawerHeader(child: new Material()),
          new ListTile(
            title: new Text("Peliculas"),
            trailing: new Icon(Icons.local_movies),
          ),
          new Divider(
            height: 5.0,
          ),
          new ListTile(
            title: new Text("Television"),
            trailing: new Icon(Icons.live_tv),
          ),
          new Divider(
            height: 5.0,
          ),
          new ListTile(
            title: new Text("Cerrar"),
            trailing: new Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      )),
      bottomNavigationBar: new BottomNavigationBar(
        items: _getFooterItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _getFooterItems() {
    return [
      new BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up), label: ("Populares")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.update), label: ("Proximamente")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.star), label: ("Mejor Valoradas")),
    ];
  }
}
