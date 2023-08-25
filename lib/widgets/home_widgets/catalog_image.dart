import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalaogImage extends StatelessWidget {
  final String image;

  const CatalaogImage({super.key, required this.image});
  // const CatalaogImage({required Key key, required this.image})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(image)
        .box
        .rounded
        .p16
        .color(context.canvasColor)
        .make()
        .p16()
        .wPCT(
          context: context,
          widthPCT: context.isMobile ? 40 : 20,
        );
  }
}
