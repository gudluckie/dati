import 'package:dat/screens/home/components/image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    Key? key,
    required this.name,
    this.color = const Color(0xFF7553F6),
    this.iconSrc = "assets/icons/ios.svg",
  }) : super(key: key);

  final String name, iconSrc;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      height: 450,
      width: 300,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, bottom: 8),
                      child: Text(
                        "Location, 23",
                        style: TextStyle(
                          color: Colors.white38,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(iconSrc),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Center(
            child: Container(
              height: 280,
              width: 280,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                shape: BoxShape.rectangle,
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/avaters/peak.jpg"),
                    fit: BoxFit.cover),
                //borderRadius: BorderRadius.all(Radius.circular(20)
                //),
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: List.generate(
              3,
              (index) => Transform.translate(
                offset: Offset((-10 * index).toDouble(), 0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(
                    "assets/avaters/Avatar ${index + 1}.jpg",
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
