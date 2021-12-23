import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/posts.dart';
import '../../utils/constants.dart';
import '../widgets/post_list_items.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Posts'),
        backgroundColor: kPrimaryColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/kwg-webview');
            },
            icon: const Icon(
              Icons.open_in_new,
            ),
          )
        ],
      ),
      body: ChangeNotifierProvider(
        create: (context) => PostProvider(),
        child: const PostListItems(),
      ),
    );
  }
}
