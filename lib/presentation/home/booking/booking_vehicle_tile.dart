import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BookingVehicleTile extends StatefulWidget {
  const BookingVehicleTile({
    Key? key,
    required this.onShow,
  }) : super(key: key);
  final Function() onShow;

  @override
  State<BookingVehicleTile> createState() => _BookingVehicleTileState();
}

class _BookingVehicleTileState extends State<BookingVehicleTile>
    with TickerProviderStateMixin {
  bool isSelected = false;
  bool isExpanded = false;

  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 700),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.ease,
  );

  late final AnimationController _seeAllController = AnimationController(
    duration: const Duration(milliseconds: 700),
    vsync: this,
  );

  late final Animation<double> _seeAllAnimation = CurvedAnimation(
    parent: _seeAllController,
    curve: Curves.ease,
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelected ? _controller.reverse() : _controller.forward();
        widget.onShow();
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  border: Border.all(
                    color: isSelected ? Colors.deepOrange : Colors.transparent,
                    width: isSelected ? 2 : 1,
                  ),
                  boxShadow: isSelected
                      ? const []
                      : [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 1,
                            spreadRadius: 2,
                          )
                        ],
                ),
                child: Stack(
                  children: [
                    Image.network(
                      'https://www.lalamove.com/hubfs/Lalamove%20Website%202020/Share_Vehicle_icon/IllustratedIcon-Bike.png',
                      height: 100,
                      width: 100,
                    ),
                    Positioned(
                      left: 100,
                      top: 20,
                      right: 20,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Motorcycle',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Cheapest delivery option perfect for small'
                                  'items. MAX: 20 kg',
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.inbox,
                                color: Colors.grey,
                                size: 15,
                              ),
                              const SizedBox(width: 5),
                              Flexible(
                                child: Text(
                                  '0.5 x 0.4 x 0.5 Meter . Up to 20 kg',
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -7,
                right: -10,
                child: Visibility(
                  visible: isSelected,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: const BoxDecoration(
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                ),
              ),
              // Positioned(
              //   left: 0,
              //   right: 0,
              //   bottom: 5,
              //   child:
              // )
            ],
          ),
          SizeTransition(
            sizeFactor: _animation,
            axis: Axis.vertical,
            axisAlignment: -1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    'Additional Service',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const AdditionalServiceTile(
                    title: 'Purchase Service(>30min wait time: +P60)',
                    price: '50',
                  ),
                  const SizedBox(height: 10),
                  const AdditionalServiceTile(
                    title: 'Queueing Service',
                    price: '70',
                  ),
                  const SizedBox(height: 10),
                  const AdditionalServiceTile(
                    title: 'Lalabag(Insulated Box)',
                    price: '0',
                  ),
                  const SizedBox(height: 10),
                  SizeTransition(
                    sizeFactor: _seeAllAnimation,
                    axis: Axis.vertical,
                    axisAlignment: -1,
                    child: const AdditionalServiceTile(
                      title: 'Cash Handling',
                      price: '30',
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: TextButton(
                      onPressed: () {
                        isExpanded
                            ? _seeAllController.reverse()
                            : _seeAllController.forward();
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            isExpanded ? 'See less' : 'See all',
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 21,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Icon(
                            isExpanded ? Icons.expand_less : Icons.expand_more,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AdditionalServiceTile extends StatelessWidget {
  const AdditionalServiceTile({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 50.w,
            child: Text(
              title,
              maxLines: 2,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey.shade700,
              ),
            ),
          ),
          const Spacer(),
          Text(
            '₱$price',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
