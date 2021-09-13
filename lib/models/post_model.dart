class PostModel {
  late String postUsername;
  late String userprofileImage;
  List<String>? image;
  String? text;
  int? likes;
  int? comments;
  int? shares;

  // PostModel(this.postUsername,
  //     {this.image, this.text, this.likes, this.comments, this.shares});

  PostModel(String postUsername, String userProfileImage, List<String>? image,
      String? text, int? likes, int? comments, int? shares) {
    this.postUsername = postUsername;
    this.userprofileImage = userProfileImage;
    this.image = image;
    this.text = text;
    this.likes = likes;
    this.comments = comments;
    this.shares = shares;
  }
}
