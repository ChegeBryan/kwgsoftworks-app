import 'package:flutter/material.dart';
import 'package:kwgsoftworks/models/post_model.dart';

class PostItemCard extends StatelessWidget {
  final Post post;
  const PostItemCard({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Column(
          children: [
            Text(post.name),
            Text(post.email),
          ],
        ),
        subtitle: Text(post.body),
        isThreeLine: true,
      ),
    );
  }
}
