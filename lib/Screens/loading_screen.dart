import 'package:flutter/material.dart';
import 'package:instagram_clone_app/utils/gradient_text.dart';



class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) => Navigator.pushReplacementNamed(context, '/feed'));
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SizedBox()
          ),
          Image.asset('images/instagram_logo_transparent.png',height: 80.0,),
          Expanded(
              child: SizedBox()),
          Center(child: Text('from',
          style: TextStyle(
            fontSize: 15.0,
            color: Color(0xff868686)
          ),)),
          Center(child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: GradientText('FACEBOOK', LinearGradient(colors: [Color(0xffBA8247), Color(0xff6B144D)]),TextStyle(
              fontSize: 20.0,
              letterSpacing: 2.5
            ))
          )),
          SizedBox(
            height: 60.0,
          )
        ],
      )
      );
  }
}
