import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HeartBtn extends StatefulWidget {
  const HeartBtn({super.key, this.size = 22, this.clore = Colors.transparent});
  final double size;
  final Color clore;
  @override
  State<HeartBtn> createState() => _HeartBtnState();
}

class _HeartBtnState extends State<HeartBtn> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.clore,
      shape: CircleBorder(),
      child: IconButton(
        onPressed: () {},
        icon: Icon(IconlyLight.heart, size: widget.size),
      ),
    );
  }
}
