import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Moment"),
        centerTitle: true,
        backgroundColor: Colors.pink[400],
        leading: Builder(
          builder: (context) => IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        height: 50.0,
        index: 0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.notifications, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.settings, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.green,
        backgroundColor: Colors.blueGrey,
        animationCurve: Curves.easeInOutQuad,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: Card(
              child: ListTile(
                title: const Text(
                  "Groups",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: 'BerkshireSwash',
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black87),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 120.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink[50],
                    child: Text(
                      "General",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Container(
                  width: 120.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink[50],
                    radius: 10.0,
                    child: Text(
                      "MIS",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Container(
                  width: 120.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink[50],
                    child: Text(
                      "Tutor Ward",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Container(
                  width: 120.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink[50],
                    child: Text(
                      "Project",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black87),
                    ),
                  ),
                ),
                Container(
                  width: 120.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.pink[50],
                    child: Text(
                      "CoE",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.black87),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: Card(
              child: ListTile(
                title: const Text(
                  "Recents",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: 'BerkshireSwash',
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 20.0, 5.0, 30.0),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.chat),
          backgroundColor: Colors.blue,
        ),
      ),
      drawer: Drawer(
        child: Card(
          margin: EdgeInsets.fromLTRB(2.0, 30.0, 2.0, 2.0),
          color: Colors.blueGrey[100],
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 120.0,
                  child: Image(
                    image: AssetImage("images/logo.png"),
                  ),
                ),
                Text(
                  "Remote Monitoring App",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                Text(
                  "Version 0.1.0",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                Divider(
                  color: Colors.redAccent,
                  height: 40.0,
                ),
                Text(
                  "Developed by",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: 'BerkshireSwash',
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0),
                ),
                Text(
                  "Department of Mechatronics",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                Text(
                  "Thiagarajar College of Engineering",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                Text(
                  "Madurai - 625015",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                Image(
                  image: AssetImage("images/tcelogo.png"),
                ),
              ]),
        ),
      ),
    );
  }
}
