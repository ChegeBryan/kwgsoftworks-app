import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import '../models/post_model.dart';
import '../utils/constants.dart';

enum Status { loading, loaded, error }

class PostProvider with ChangeNotifier {
  Status? postStatus;

  Future<List<Post>> fetchPosts() async {
    List posts;

    postStatus = Status.loading;
    notifyListeners();

    Response response = await get(
      Uri.parse(BASE_URL),
      headers: {'Accept': 'application/json'},
    );

    if (response.statusCode == 200) {
      posts = jsonDecode(response.body);
      postStatus = Status.loaded;
      notifyListeners();
      return posts.map<Post>((json) => Post.fromJson(json)).toList();
    } else {
      postStatus = Status.error;
      notifyListeners();
      throw Exception('Something went wrong.');
    }
  }
}
