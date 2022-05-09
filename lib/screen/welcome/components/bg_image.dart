import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BgImage extends StatelessWidget {
  const BgImage({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset('assets/images/illustration_nature_1.png'),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset('assets/images/illustration_nature_2.png'),
        ),
        Positioned(
          right: 0,
          bottom: 200,
          child: Image.asset('assets/images/illustration_nature_3.png'),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: SvgPicture.asset('assets/icons/boy.svg'),
        )
      ],
    );
  }
}
