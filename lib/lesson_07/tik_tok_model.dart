class TikTokModel {
  final String bigImage;
  final String profileImage;
   bool like;
  final int countLike;
  final int countComment;

  TikTokModel({
    required this.bigImage,
    required this.profileImage,
    required this.like,
    required this.countLike,
    required this.countComment,
  });
}

List<TikTokModel> data = [
  TikTokModel(
      bigImage: 'assets/img/audi.jpg',
      profileImage: 'assets/img/a-p1.jpg',
      like: false,
      countLike: 345,
      countComment: 45),
  TikTokModel(
      bigImage: 'assets/img/bmw.jpg',
      profileImage: 'assets/img/a-p2.jpg',
      like: false,
      countLike: 1000,
      countComment: 235),
];
