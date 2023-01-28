
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


int activeIndex = 0;

Widget buildIndicator() => AnimatedSmoothIndicator(
  activeIndex: activeIndex,
  count: 5,
  effect: ScrollingDotsEffect(
    dotColor: Color(0xFFEBF0FF),
    activeDotColor: Color(0xFF40BFFF),
    dotHeight: 8,
    dotWidth: 8,
  ),
);
