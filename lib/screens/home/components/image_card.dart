import 'package:flutter/material.dart';

class ImageCard extends StatefulWidget {
  final String imageSrc;

  const ImageCard({
    Key? key,
    required this.imageSrc,
  }) : super(key: key);

  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  @override
  Widget build(BuildContext context) => SizedBox.square(
        child: buildCard(),
      );

  Widget buildCard() => ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imageSrc),
                  fit: BoxFit.cover,
                  alignment: Alignment(-0.3, 0))),
        ),
      );
}
