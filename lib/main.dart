import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.teal, Colors.tealAccent[100]]
            )
          ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 280),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(CupertinoPageRoute(builder: (context) {
                  return BioPage();
                }));
              },
              child: Card(
                //color: Colors.teal,
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Alessandra Turolla',
                          style: TextStyle(
                              //color: Colors.white,
                              fontSize: 30
                          ),
                        ),
                        Text(
                          'Frontend Developer',
                          style: TextStyle(
                              //color: Colors.white,
                              fontSize: 20
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.phone,
                                size: 15,
                                //color: Colors.white,
                              ),
                              Text(
                                '380 4329210',
                                style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.email,
                                size: 15,
                                //color: Colors.white,
                              ),
                              Text(
                                'aleturolla.23@gmail.com',
                                style: TextStyle(
                                    //color: Colors.white,
                                    fontSize: 15
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            )),
      ),
    );
  }
}

class BioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alessandra Turolla'),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                image: NetworkImage(
                    'https://miro.medium.com/max/3150/1*Cxwp9j8j6dtJ7Ha6AK5nKw.jpeg'),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Alessandra Turolla',
                    style: TextStyle(fontSize: 30),
                  )),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    textAlign: TextAlign.justify,
                  ))
            ],
          ),
        ));
  }
}
