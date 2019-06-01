import 'package:flutter/material.dart';
import 'package:flutter_app/views/job-card-view.dart';

class TabBarCariKerja extends StatefulWidget {
  @override
  _TabBarCariKerja createState() => new _TabBarCariKerja();
}

class _TabBarCariKerja extends State<TabBarCariKerja> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          actions: <Widget>[],
          title: new TabBar(
            tabs: [
              Tab(
                  icon: ClipOval(
                child: Image.asset(
                  'all.png',
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                ),
              )),
              Tab(
                  icon: ClipOval(
                child: Image.asset(
                  'linkedinicon.png',
                  fit: BoxFit.cover,
                  width: 30,
                  height: 30,
                ),
              )),
              Tab(
                icon: ClipOval(
                  child: Image.asset(
                    'jobstreet.jpg',
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              Tab(
                icon: ClipOval(
                  child: Image.asset(
                    'indeed.jpg',
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: new TabBarView(
          children: [
            // new Icon(
            //   Icons.directions_car,
            //   size: 50.0,
            // ),
            // new Icon(
            //   Icons.directions_transit,
            //   size: 50.0,
            // ),
            // new Icon(
            //   Icons.directions_bike,
            //   size: 50.0,
            // ),
            JobCardView(),
            JobCardView(),
            JobCardView()
          ],
        ),
      ),
    ));
  }
}
