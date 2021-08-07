import 'package:flutter/material.dart';
import 'package:instagram_clone_app/build_stories.dart';
import 'package:instagram_clone_app/utils/data.dart';
import 'package:instagram_clone_app/post_widget.dart';
import 'package:instagram_clone_app/utils/database.dart';

class BuildList extends StatelessWidget {
  BuildList({Key? key}) : super(key: key);

  List<Post> posts = [Post(),tweety_post,mickey_post,bugsBunny_post,dexter_post,shinchan_post,doraemon_post,barbie_post,todoroki_post,deku_post];
  List<Profile> profiles = [yourProfile,tweety,mickey,bugsBunny,dexter,shinchan,doraemon,barbie,todoroki,deku];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: posts.length,
        itemBuilder: (context,index) => index==0? SizedBox(
          child: BuildStories(profiles: profiles,),
        ):
        PostWidget(post: posts[index],),
      ),
    );
  }
}
