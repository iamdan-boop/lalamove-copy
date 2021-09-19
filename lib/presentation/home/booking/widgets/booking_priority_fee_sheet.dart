import 'package:flutter/material.dart';

class BookingPriorityFeeSheet extends StatefulWidget {
  const BookingPriorityFeeSheet({Key? key}) : super(key: key);

  @override
  _BookingPriorityFeeSheetState createState() =>
      _BookingPriorityFeeSheetState();
}

class _BookingPriorityFeeSheetState extends State<BookingPriorityFeeSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.close,
                color: Colors.grey,
              ),
            ),
          ),
          const Text(
            'Add priority fee',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          const PriorityFeeTile(price: 20),
          const SizedBox(height: 15),
          const PriorityFeeTile(price: 50),
          const SizedBox(height: 15),
          const PriorityFeeTile(price: 100),
          const SizedBox(height: 15),
          TextFormField(
            initialValue: '',
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide(
                  color: Colors.black.withOpacity(0.20),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  '₱',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              hintText: 'Custom amount (up to ₱200)',
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Total(with tax)',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Text(
                '₱353',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Add Priority Fee',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 21,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class PriorityFeeTile extends StatefulWidget {
  const PriorityFeeTile({
    Key? key,
    required this.price,
  }) : super(key: key);

  final int price;
  @override
  _PriorityFeeTileState createState() => _PriorityFeeTileState();
}

class _PriorityFeeTileState extends State<PriorityFeeTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.deepOrange : Colors.grey.shade300,
            width: 1,
          ),
          color: isSelected ? Colors.deepOrange.shade100 : Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              Icons.add,
              color: isSelected ? Colors.deepOrange : Colors.black,
            ),
            const SizedBox(width: 10),
            Text(
              '₱${widget.price}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.deepOrange : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
