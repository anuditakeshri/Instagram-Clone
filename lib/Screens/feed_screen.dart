import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone_app/build_list.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            BuildList(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        // color: Colors.white,
        height: 50.0,
        child: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(onPressed: null, icon: Icon(FontAwesomeIcons.home,color: Colors.black,)),
              IconButton(onPressed: null, icon: Icon(FontAwesomeIcons.search,color: Colors.black,)),
              IconButton(onPressed: null, icon: Icon(FontAwesomeIcons.camera,color: Colors.black,)),
              IconButton(onPressed: null, icon: Icon(FontAwesomeIcons.heart,color: Colors.black,)),
              IconButton(onPressed: null, icon: Icon(FontAwesomeIcons.userCircle,color: Colors.black,))
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Text('Instagram',
          style: TextStyle(
              color: Colors.black,
            fontFamily: 'Billabong',
              fontSize: 40.0,
          ),
        ),
      ),
      automaticallyImplyLeading: false,
      actions: <Widget>[
        Padding(padding: EdgeInsets.only(right: 20.0),
          child: Icon(FontAwesomeIcons.plusSquare,color: Colors.black,),
        ),
        Padding(padding: EdgeInsets.only(right: 20.0),
        child: Icon(FontAwesomeIcons.facebookMessenger,color: Colors.black,)
          ,)
      ],
      elevation: 0.0,
    );
  }
}


