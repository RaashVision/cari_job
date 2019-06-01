import 'package:flutter/material.dart';

class TabBarCariKerja extends StatefulWidget {
  @override
  _TabBarCariKerja createState() => new _TabBarCariKerja();
}

class _TabBarCariKerja extends State<TabBarCariKerja> {

  Widget appBarTitle = new Text("AppBar Title");
  Icon actionIcon = new Icon(Icons.search);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.pink[800], //Changing this will change the color of the TabBar
        accentColor: Colors.cyan[600],
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(

          appBar: AppBar(
            actions: <Widget>[
              // action button
              IconButton(
                icon: new Stack(
                  children: <Widget>[
                    new Icon(Icons.notifications),
                    new Positioned(
                      right: 0,
                      child: new Container(
                        padding: EdgeInsets.all(1),
                        decoration: new BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        constraints: BoxConstraints(
                          minWidth: 12,
                          minHeight: 12,
                        ),
                        child: new Text("1",
                          style: new TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                // title: Text('Notifications'),
              ),
              IconButton(
                icon: ClipOval(
                  child: Image.asset(
                    'flutterlogo.png',
                    fit: BoxFit.cover,
                  ),
                ),

                onPressed: () {

                },
              ),

              // action button
            ],
            bottom: TabBar(

              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.book)),
                Tab(icon: Icon(Icons.bookmark)),
              ],
            ),
            title: Text('Cari Kerja'),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}