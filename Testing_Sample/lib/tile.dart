import 'package:flutter/material.dart';
import 'tilebutton.dart';

class Tile extends StatelessWidget {
  final String name;
  const Tile({super.key,required this.name});

  final double _width = 50;

  final double _height = 50;

  final double _radius = 1.8 * 25;

  final double _tilehorispacer = 20;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(_radius),
              ),
            ),
            SizedBox(width: _tilehorispacer),
            Text(name),
          ],
        ),
        Row(
          children: [
            TileButton(),
          ],
        )
      ],
    );
  }
}
