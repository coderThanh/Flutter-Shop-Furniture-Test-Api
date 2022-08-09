import 'package:flutter/material.dart';

import '../../../../models/constant_theme.dart';
import '../../../../models/product.dart';
import '../../../../models/style_theme_light.dart';
import '../../../widgets/check_box_widget.dart';
import '../../../widgets/check_condition_widget.dart';

class BodyInfo extends StatefulWidget {
  const BodyInfo({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  State<BodyInfo> createState() => _BodyInfoState();
}

class _BodyInfoState extends State<BodyInfo> {
  String colorCheck = 'black';

  void changeColorCheck({required String color}) {
    setState(() {
      colorCheck = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Positioned(
      width: size.width * 0.4,
      child: Container(
        padding: const EdgeInsets.only(
          left: ConstTheme.padding,
          right: 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Category
            const SizedBox(height: 20),
            CheckCondition(
              exception: widget.product.category != null,
              ifTrue: Text(
                widget.product.category.toString().toUpperCase(),
                maxLines: 1,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: StyleTheme.colorText.withOpacity(0.6),
                  height: 1.2,
                ),
              ),
            ),

            // Title
            const SizedBox(height: 4),
            Text(
              widget.product.title.toString(),
              maxLines: 3,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                height: 1.2,
              ),
            ),

            // Price
            const SizedBox(height: 12),
            CheckCondition(
              exception: widget.product.price != null,
              ifTrue: Text.rich(
                TextSpan(
                  text: 'Form \n',
                  style: TextStyle(
                    color: StyleTheme.colorText.withOpacity(0.6),
                    height: 2,
                  ),
                  children: [
                    TextSpan(
                      text: '\$${widget.product.price.toString()}',
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 16,
                        height: 1.2,
                        fontWeight: FontWeight.w600,
                        color: StyleTheme.colorText,
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Check Variable
            const SizedBox(height: 20),
            Text(
              'Available Colors',
              maxLines: 1,
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                color: StyleTheme.colorText.withOpacity(0.6),
                height: 1.2,
              ),
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                CheckBox(
                  onPress: () => changeColorCheck(color: 'black'),
                  color: Colors.black,
                  checked: colorCheck == 'black',
                ),
                CheckBox(
                  onPress: () => changeColorCheck(color: 'green'),
                  color: Colors.lightGreen,
                  checked: colorCheck == 'green',
                ),
                CheckBox(
                  onPress: () => changeColorCheck(color: 'default'),
                  checked: colorCheck == 'default',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
