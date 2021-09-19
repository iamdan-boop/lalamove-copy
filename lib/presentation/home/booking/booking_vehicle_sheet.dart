import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookingVehicleSheet extends StatelessWidget {
  const BookingVehicleSheet({
    Key? key,
    required this.onClose,
  }) : super(key: key);

  final Function() onClose;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63.h,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 30),
          const Text(
            'Price Details',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              Text(
                'Starting Price',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                ),
              ),
              const Spacer(),
              Text(
                '₱50',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                'Over mileage (40.6km)',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                ),
              ),
              const Spacer(),
              Text(
                '₱50',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                'High Demand Surchage',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                ),
              ),
              const Spacer(),
              Text(
                '₱50',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w400,
                  fontSize: 19,
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
          const Divider(height: 1),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: onClose,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Hero(
                  tag: 'total',
                  child: Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Spacer(),
                Hero(
                  tag: 'total_price',
                  child: Text(
                    '₱353',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Icon(
                  Icons.expand_more,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Exclude extra fees (e.g. toll or parking fee).',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade600,
            ),
          ),
          Text(
            'Please settle with the driver accordingto the',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade600,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: 'Pricing Standard',
                  style: TextStyle(
                    fontSize: 17,
                    decoration: TextDecoration.underline,
                    color: Colors.deepOrange,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Hero(
            tag: 'place_order_btn',
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Place Order',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
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
