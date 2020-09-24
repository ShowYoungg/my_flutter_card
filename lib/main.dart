import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/Show-1.jpg'),
              ),
              Text(
                'Soyombo Soyinka',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.teal[900],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+234 8067 264 151',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[900],
                          fontFamily: 'SourceSansPro'),
                    ),
                  ],
                ),
              ),
              /////////////////CARD CAN BE USED TO ACHIEVE THE ABOVE (CARD IS BEST FOR THIS), SEE BELOW////////////
              Card(
                margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'showy4show@gmail.com',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.teal[900],
                        fontFamily: 'SourceSansPro'),
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

/////////////////////////////////////LESSONS ON FLUTTER USER INTERFACE BY Dr ANGELA YU FROM LONDON APP BREWERY/////////////////////
/////////Resources to browse to get fonts, material designs (fonts, pallete, colors, icons)
////////docs.flutter, fonts.google.com, materialpallete.com etc

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: SafeArea(
//        child: Scaffold(
//          backgroundColor: Colors.teal,
//          body: Column(
//            //mainAxisSize: MainAxisSize.min, // This is equivalent of height or vertical wrap_content and match_parent in Android XML
//            //verticalDirection: VerticalDirection.up, // This will shift boxes up and down
//            //mainAxisAlignment: MainAxisAlignment.end, // This is equivalent to alignParentStart/alignParentEnd/alignParentCenter.
//            crossAxisAlignment: CrossAxisAlignment.end, // This will be aligned to the horizontal or perpendicular
//
//            children: <Widget>[
//              Container(
//                height: 100.0,
//                width: 100.0,
//                color: Colors.white,
//                child: Center(child: Text('Container1')),
//              ),
//              Container(
//                height: 100.0,
//                width: 100.0,
//                color: Colors.blue,
//                child: Center(child: Text('Container2')),
//              ),
//
//              SizedBox(height: 20.0,), // Used for spacing
//              Container(
//                height: 100.0,
//                width: 100.0,
//                color: Colors.red,
//                child: Center(child: Text('Container3')),
//              ),
//              /////////////////////////THIS CONTAINER IS CREATED TO HAVE A WIDTH OF INFINITY SO
//              ///////////////////////////crossAxisAlignment can be used; hence,  OTHERS CAN ALIGN PERPENDICULARLY////
//              Container(
//                height: 10.0,
//                width: double.infinity, // means match_parent or use crossAxixAlignment.stretch above
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

////////////////////////////////////////DEFAULT GENERATED CODE THAT FEATURES STATEFULL WIDGET ABOUT STATES IN FLUTTER ///////////////////////////
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  // This widget is the home page of your application. It is stateful, meaning
//  // that it has a State object (defined below) that contains fields that affect
//  // how it looks.
//
//  // This class is the configuration for the state. It holds the values (in this
//  // case the title) provided by the parent (in this case the App widget) and
//  // used by the build method of the State. Fields in a Widget subclass are
//  // always marked "final".
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      // This call to setState tells the Flutter framework that something has
//      // changed in this State, which causes it to rerun the build method below
//      // so that the display can reflect the updated values. If we changed
//      // _counter without calling setState(), then the build method would not be
//      // called again, and so nothing would appear to happen.
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // This method is rerun every time setState is called, for instance as done
//    // by the _incrementCounter method above.
//    //
//    // The Flutter framework has been optimized to make rerunning build methods
//    // fast, so that you can just rebuild anything that needs updating rather
//    // than having to individually change instances of widgets.
//    return Scaffold(
//      appBar: AppBar(
//        // Here we take the value from the MyHomePage object that was created by
//        // the App.build method, and use it to set our appbar title.
//        title: Text(widget.title),
//      ),
//      body: Center(
//        // Center is a layout widget. It takes a single child and positions it
//        // in the middle of the parent.
//        child: Column(
//          // Column is also a layout widget. It takes a list of children and
//          // arranges them vertically. By default, it sizes itself to fit its
//          // children horizontally, and tries to be as tall as its parent.
//          //
//          // Invoke "debug painting" (press "p" in the console, choose the
//          // "Toggle Debug Paint" action from the Flutter Inspector in Android
//          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//          // to see the wireframe for each widget.
//          //
//          // Column has various properties to control how it sizes itself and
//          // how it positions its children. Here we use mainAxisAlignment to
//          // center the children vertically; the main axis here is the vertical
//          // axis because Columns are vertical (the cross axis would be
//          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}
