class Post {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  Post(this.postId, this.id, this.name, this.email, this.body);

  Post.fromJson(Map<String, dynamic> json)
      : postId = json['name'],
        id = json['id'],
        name = json['name'],
        email = json['email'],
        body = json['body'];
}
