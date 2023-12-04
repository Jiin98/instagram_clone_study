import 'package:flutter/material.dart';
import 'package:instagram_clone_study/src/components/avatar_widget.dart';
import 'package:instagram_clone_study/src/components/image_data.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              100,
              (index) => AvatarWidget(
                  thumbPath:
                      'https://d38b044pevnwc9.cloudfront.net/cutout-nuxt/enhancer/2.jpg',
                  type: AvartarType.TYPE1))),
    );
  }

  Widget _postList() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _storyBoardList(),
          _postList(),
        ],
      ),
    );
  }
}
