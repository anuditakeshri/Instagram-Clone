import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone_app/utils/data.dart';

class PostWidget extends StatelessWidget {

  PostWidget({this.post});
  Post? post;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50.0,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage(post!.profile!.displayPic!),
                ),
                Text(post!.profile!.name!,style: TextStyle(color: Colors.black,fontSize: 15.0),
                ),
                Expanded(child: SizedBox()),
                Icon(FontAwesomeIcons.ellipsisV,color: Colors.black,)
              ],
            ),
          ),
          Container(
            child: Image.asset(post!.postImage!),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            height: 50.0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(FontAwesomeIcons.heart,color: Colors.black,),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(FontAwesomeIcons.comment,color: Colors.black,),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(FontAwesomeIcons.paperPlane,color: Colors.black,),
                ),
                Expanded(child: SizedBox()),
                Icon(FontAwesomeIcons.bookmark,color: Colors.black,)
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(post!.noOfLikes!.toString()+' Likes',style: TextStyle(color: Colors.black,fontSize: 15.0),),
            )
          ),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(post!.profile!.name!,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(post!.description!,style: TextStyle(color: Colors.black),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
