import 'package:flutter/material.dart';

class BookingPriceDetailsScreen extends StatelessWidget {
  const BookingPriceDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Price Details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    '₱374',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Total 41.6 km',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            const Divider(),
            const SizedBox(height: 20),
            const Text(
              'Amount outstanding',
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'Base Price (Motorcycle)',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.90),
                  ),
                ),
                const Spacer(),
                Text(
                  '₱50',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.90),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Over mileage (40.6km)',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.90),
                  ),
                ),
                const Spacer(),
                Text(
                  '₱244',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.90),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  'Late Night Surchage',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black.withOpacity(0.90),
                  ),
                ),
                const Spacer(),
                Text(
                  '₱80',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.90),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                Flexible(
                  child: Text(
                    'if there are highway and toll fees, parking fees and'
                    'moving fees please pay on top of the order fee. if the'
                    'oveertime waiting fee is involved, please settle with the'
                    'driver according to the pricing basis.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
