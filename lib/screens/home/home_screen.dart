import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/course.dart';
import 'components/course_card.dart';

void _notificationButton() {
  print('Notification Pressed');
}

void _messageButton() {
  print('Message Pressed');
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AppTest'.toString(),
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: const Color(0xFFEEF1F8),
        leading: SvgPicture.asset(
          'assets/icons/apple_box.svg',
          height: 5,
          width: 5,
        ),
        actions: const [
          IconButton(
              onPressed: _notificationButton,
              icon: Icon(
                Icons.notifications_active_rounded,
                size: 30,
                color: Color(0xFFF77D8E),
              )),
          IconButton(
            onPressed: _messageButton,
            icon: Icon(
              Icons.message,
              size: 30,
              color: Colors.black45,
            ),
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.all(15),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: courses
                      .map(
                        (course) => Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: CourseCard(
                            name: course.name,
                            iconSrc: course.iconSrc,
                            color: course.color,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
