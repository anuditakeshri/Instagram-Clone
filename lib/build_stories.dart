import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone_app/utils/data.dart';

class BuildStories extends StatelessWidget {
  BuildStories({this.profiles});

  List<Profile>? profiles;

  @override
  Widget build(BuildContext context) {

    final stories = ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: profiles?.length,
        itemBuilder: (context, index) {

         return  Column(
            children: [
              Padding(
               padding: const EdgeInsets.all(8.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage(profiles![index].displayPic!),
                    ),
                    index==0?Positioned(child: Container(child: Icon(FontAwesomeIcons.plusCircle,color: Colors.blue,size: 20.0,),
                    color: Colors.white,),
                    bottom: 0,right: 0,):
                        SizedBox()
                  ],
                ),
              ),
              Text(profiles![index].name!,
                style: TextStyle(
                    color: Colors.black
                ),)
            ],
          );
        }
    );

    return Container(
      height: 100.0,
      color: Colors.white,
      margin: EdgeInsets.all(16.0),
      child: stories,

    );
  }
}
