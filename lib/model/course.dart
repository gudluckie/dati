import 'package:flutter/material.dart' show Color;

class Course {
  final String name, description, iconSrc;
  final Color color;

  Course({
    required this.name,
    this.description = 'Username',
    this.iconSrc = "assets/icons/ios.svg",
    this.color = const Color(0xFF7553F6),
  });
}

final List<Course> courses = [
  Course(
    name: "Dai Verse",
  ),
  Course(
    name: "Dai Verse",
    iconSrc: "assets/icons/code.svg",
    color: const Color(0xFF80A4FF),
  ),
];

final List<Course> recentCourses = [
  Course(name: "Henry Terru"),
  Course(
    name: "Henry Terru",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
  ),
  Course(name: "Elton Faraja"),
  Course(
    name: "Elton Faraja",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/code.svg",
  ),
];
