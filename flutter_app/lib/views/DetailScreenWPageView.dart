import 'package:flutter/material.dart';
import 'dart:math' as math;

class DetailScreenWPageView extends StatefulWidget {
  static const String id = 'DetailScreenWPageView';

  @override
  _DetailScreenWPageViewState createState() => _DetailScreenWPageViewState();
}

class _DetailScreenWPageViewState extends State<DetailScreenWPageView> {
  PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() => pageOffset = pageController.page);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        leading: null,
//        actions: <Widget>[
//          IconButton(
//              icon: Icon(Icons.close),
//              onPressed: () {
//                Navigator.pop(context);
//              }),
//        ],
//        title: Text('⚡️Job Detail'),
//        backgroundColor: Colors.lightBlueAccent,
//      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.80,
          child: PageView(
            controller: pageController,
            children: <Widget>[
              Card(
                elevation: 20.0,
                color: Colors.lightBlueAccent[90],
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Software Engineer',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            fontSize: 35.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Google',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            fontSize: 30.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '3k - 5k',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            fontSize: 25.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SingleChildScrollView(
                            child: Text(
                              aboutJob,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                color: Colors.black,
                                fontSize: 20.0,
                                fontStyle: FontStyle.normal,
                                //fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20.0,
                color: Colors.lightBlueAccent[90],
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Software Engineer',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            fontSize: 35.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Google',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            fontSize: 30.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '3k - 5k',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            fontSize: 25.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SingleChildScrollView(
                            child: Text(
                              aboutJob,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                color: Colors.black,
                                fontSize: 20.0,
                                fontStyle: FontStyle.normal,
                                //fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 20.0,
                color: Colors.lightBlueAccent[90],
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Software Engineer',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            fontSize: 35.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Google',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            fontSize: 30.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          '3k - 5k',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            color: Colors.black,
                            fontSize: 25.0,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SingleChildScrollView(
                            child: Text(
                              aboutJob,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                color: Colors.black,
                                fontSize: 20.0,
                                fontStyle: FontStyle.normal,
                                //fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String aboutJob =
    'Passionate people are everywhere at Google. In Developer Relations, we are excited to collaborate and connect with the communities that love technology as much as we do. Part community manager and part developer advocate, Developer Programs Engineers collaborate with developers at conferences and online, and advocate for developers interests internally at Google. Not afraid to be hands-on, you write sample code and client libraries as well as participate in developer forums and support queues to troubleshoot and debug coding problems developers encounter. Internally, you work with product engineering teams to improve our products by conveying feedback from developers, reviewing API designs, and testing new features. Chrome, Android, App Engine, HTML5, and our core G Suite and Ads APIs are just some of the platforms you promote and support.'
    'Flutter is a new mobile app SDK that helps developers and designers build beautiful, modern mobile apps. Flutter is firmly in the hands of the development community, with Flutter being enthusiastically used by thousands of developers, many of whom contribute back to the project and advocate on its behalf. As a Developer Programs Engineer, you will join a fast-paced and fully open-sourced project being grown by an amazing team at Google.';
