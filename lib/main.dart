import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Memes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Memes"), centerTitle: true, elevation: 2),
        body: Center(
          child: Container(
              padding: EdgeInsets.only(top: 100.0),
              child: Column(
                children: [MemesImageAsset(), MemesImageAsset2()],
              )),
        ),
      ),
    );
  }
}

class MemesImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/1.jpg');
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
}

class MemesImageAsset2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/2.jpg');
    Image image = Image(image: assetImage);
    return Container(child: image);
  }
}
