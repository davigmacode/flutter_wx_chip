import 'package:flutter/material.dart';
import 'package:wx_text/wx_text.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({
    super.key,
    this.width,
    this.maxWidth = 500,
    required this.title,
    required this.child,
  });

  final double? width;
  final double maxWidth;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: WxText.labelLarge(title),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: SizedBox(
            width: width,
            child: Card.outlined(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: child,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
