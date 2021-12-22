import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/post_model.dart';
import '../../services/posts.dart';
import 'loading_indicator.dart';
import 'post_item.dart';

class PostListItems extends StatelessWidget {
  const PostListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<PostProvider>(context).fetchPosts(),
      builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData || snapshot.data!.isNotEmpty) {
            return const Center(
              child: Text('No posts found.'),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              return PostItemCard(post: snapshot.data![index]);
            },
          );
        }
        return const LoadingIndicator();
      },
    );
  }
}
