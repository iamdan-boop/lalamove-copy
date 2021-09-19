import 'package:flutter/material.dart';

class PickupTimeTile extends StatefulWidget {
  const PickupTimeTile({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  _PickupTimeTileState createState() => _PickupTimeTileState();
}

class _PickupTimeTileState extends State<PickupTimeTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Icon(
              widget.icon,
            ),
          ),
          Positioned(
            left: 40,
            top: 3,
            child: Text(
              widget.title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                color: Colors.deepOrange,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
