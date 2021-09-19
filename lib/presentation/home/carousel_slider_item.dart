import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CarouselSliderItem extends StatelessWidget {
  const CarouselSliderItem({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Stack(
        children: [
          Positioned(
            left: 16,
            top: 15.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Power reward for you',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Complete 5 bookings by sep 06 2021\n'
                  'to get P170 coupon pack',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            top: 15.h,
            child: const FlutterLogo(
              size: 70,
            ),
          ),
        ],
      ),
    );
  }
}
