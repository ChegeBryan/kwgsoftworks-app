import 'package:flutter/material.dart';

import 'utils/theme.dart';
import 'views/screens/home.dart';
import 'views/screens/posts.dart';

class KWGSoftworksApp extends StatelessWidget {
  const KWGSoftworksApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KWGSoftworks',
      theme: AppTheme.light(),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/posts': (context) => const PostsScreen(),
      },
    );
  }
}
