import 'package:flutter/material.dart';
import 'package:instagram_clone_study/src/components/avatar_widget.dart';
import 'package:instagram_clone_study/src/components/image_data.dart';
import 'package:instagram_clone_study/src/components/post_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  Widget _myStory() {
    return Stack(
      children: [
        AvatarWidget(
          thumbPath:
              'https://thumb.photo-ac.com/41/41e5635bbdba6c506fef237cabad243c_t.jpeg',
          type: AvartarType.TYPE2,
          size: 70,
        ),
        Positioned(
            right: 5,
            bottom: 0,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 2)),
              child: const Center(
                child: Text(
                  '+',
                  style:
                      TextStyle(fontSize: 20, color: Colors.white, height: 1.1),
                ),
              ),
            ))
      ],
    );
  }

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        _myStory(),
        const SizedBox(width: 5),
        ...List.generate(
            100,
            (index) => AvatarWidget(
                thumbPath:
                    'https://img1.daumcdn.net/thumb/R658x0.q70/?fname=https://t1.daumcdn.net/news/202105/25/koreadognews/20210525045023050wquu.jpg',
                type: AvartarType.TYPE1))
      ]),
    );
  }

  Widget _postList() {
    return Column(
      children: [...List.generate(50, (index) => PostWidget())],
    );
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
