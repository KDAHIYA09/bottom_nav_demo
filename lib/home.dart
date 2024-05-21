import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart ';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {

    final items = <Widget>[
      Icon(Icons.home, size: 30,),
      Icon(Icons.contact_page, size: 30),
      Icon(Icons.favorite, size: 30),
      Icon(Icons.supervised_user_circle, size: 30),
      Icon(Icons.photo, size: 30)
    ];

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Color(0xFF2e4e73),
        title: Text(widget.title, style: TextStyle(color: Colors.white),),
      ),
      body: Image.network(
        'https://www.akamai.com/site/im-demo/perceptual-standard.jpg?imbypass=true',

            height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white)
        ),
        child: CurvedNavigationBar(
            items: items,
          index: index,
          backgroundColor: Colors.transparent,
          color: Color(0xFF2e4e73),
          height: 60,
          onTap: (index) => setState(() {
            this.index = index;
          }),
        ),
      ),
    );
  }
}
