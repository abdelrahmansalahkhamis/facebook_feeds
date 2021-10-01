class PostModel {
  late String postUsername;
  late String userprofileImage;
  List<String>? image;
  String? text;
  int? likes;
  int? comments;
  int? shares;
  late bool online;

  // PostModel(this.postUsername,
  //     {this.image, this.text, this.likes, this.comments, this.shares});

  PostModel(String postUsername, String userProfileImage, List<String>? image,
      String? text, int? likes, int? comments, int? shares, bool online) {
    this.postUsername = postUsername;
    this.userprofileImage = userProfileImage;
    this.image = image;
    this.text = text;
    this.likes = likes;
    this.comments = comments;
    this.shares = shares;
    this.online = online;
  }
}
