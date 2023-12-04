import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum AvartarType { TYPE1, TYPE2, TYPE3 }

class AvatarWidget extends StatelessWidget {
  bool? hasStory;
  String thumbPath;
  String? nickname;
  AvartarType type;
  double? size;

  AvatarWidget({
    Key? key,
    this.hasStory,
    required this.thumbPath,
    this.nickname,
    required this.type,
    this.size = 65,
  }) : super(key: key);

  Widget type1widget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.purple, Colors.orange]),
        shape: BoxShape.circle,
      ),
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(size! ),
          child: Container(
              width: size,
              height: size,
              child: CachedNetworkImage(
                imageUrl: thumbPath,
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvartarType.TYPE1:
        return type1widget();
        break;
      case AvartarType.TYPE2:
        return Container();
        break;
      case AvartarType.TYPE3:
        return Container();
        break;
    }
  }
}
