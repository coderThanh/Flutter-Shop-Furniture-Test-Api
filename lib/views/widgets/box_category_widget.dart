import 'package:flutter/material.dart';

import '../../models/category.dart';
import '../../models/constant_theme.dart';
import '../../models/gif_theme.dart';
import '../../models/style_theme_light.dart';
import 'check_condition_widget.dart';

class BoxCategory extends StatelessWidget {
  const BoxCategory({
    Key? key,
    required this.category,
    this.index,
    this.width,
    this.height,
  }) : super(key: key);

  final Category category;
  final int? index;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double widthBox = width ?? size.width / 2;
    double space = 30;

    return SizedBox(
      width: widthBox,
      child: AspectRatio(
        aspectRatio: widthBox / (widthBox + space),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipPath(
              clipper: CategoryCustomShape(),
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: const EdgeInsets.all(ConstTheme.padding),
                  decoration: const BoxDecoration(
                    color: StyleTheme.onText,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        category.title,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        style: const TextStyle(
                            height: 1.3,
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            overflow: TextOverflow.ellipsis),
                      ),
                      Text(
                        '${category.numOfProducts} Products',
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: StyleTheme.colorText.withOpacity(0.7),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: CheckCondition(
                exception: category.image != null,
                ifTrue: AspectRatio(
                  aspectRatio: widthBox / (widthBox - space),
                  child: FadeInImage.assetNetwork(
                    placeholder: GifTheme.spinner,
                    image: category.image!,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
