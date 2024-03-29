import 'package:flutter/material.dart';
import 'package:flutter_app/views/DetailScreenWPageView.dart';
import 'package:flutter_app/views/job_list.dart';
import 'package:flutter_app/views/top_tabbed_view.dart';

class DrawerItem {
  String title;
  IconData icon;
  DrawerItem(this.title, this.icon);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    new DrawerItem("Job Apply", Icons.add),
    new DrawerItem("⚡ Job Detail", Icons.book),
    new DrawerItem("About", Icons.message)
  ];

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return new TabBarCariKerja();
      case 1:
        return new DetailScreenWPageView();
//      case 2:
//        return new ThirdFragment();

      default:
        return new Text("Error");
    }
  }
  
  _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop(); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(
        new ListTile(
          leading: new Icon(d.icon),
          title: new Text(d.title),
          selected: i == _selectedDrawerIndex,
          onTap: () => _onSelectItem(i),
        )
      );
    }

    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pink[800],
        // here we display the title corresponding to the fragment
        // you can instead choose to have a static title
        title: new Text(widget.drawerItems[_selectedDrawerIndex].title),
      ),
      drawer: new Drawer(

        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              otherAccountsPictures: <Widget>[
                ClipOval(
                  child: Image.asset('defaulticon.png',
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                  ),
                ),
              ],
           currentAccountPicture: ClipOval(
             child: Image.asset('ironman.jpg',
               fit: BoxFit.cover,
               width: 40,
               height: 40,
             ),
           ),
                accountName: new Text("Iron Man"), accountEmail: new Text("ironman@gmail.com"),),
            new Column(children: drawerOptions)
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
