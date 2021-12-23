import 'package:flutter/material.dart';
import '../../models/post_model.dart';

import '../../utils/helpers.dart';

class PostItemCard extends StatelessWidget {
  final Post post;
  const PostItemCard({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
              ),
              child: Text(
                post.name.capitalizeFirstofEach,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
              ),
              child: Text(
                post.email,
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 4.0,
              ),
              child: Text(
                post.body,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
