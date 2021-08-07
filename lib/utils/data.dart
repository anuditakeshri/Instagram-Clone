class Post {
  Profile? profile;
  String? postImage;
  String? description;
  int? noOfLikes;
  bool? isLiked;

  Post({this.profile,this.description,this.isLiked,this.noOfLikes,this.postImage});

}

class Profile {
  String? name;
  String? displayPic;

  Profile({this.name,this.displayPic});
}