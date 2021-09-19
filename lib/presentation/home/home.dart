import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lalamove_copy/presentation/home/available_vehicles.dart';
import 'package:lalamove_copy/presentation/home/booking/booking_vehicle_screen.dart';
import 'package:lalamove_copy/presentation/home/home_drawer.dart';
import 'package:lalamove_copy/presentation/home/pick_up_time_tile.dart';
import 'package:lalamove_copy/presentation/home/search_location.dart';
import 'package:sizer/sizer.dart';
import 'package:timelines/timelines.dart';

import 'carousel_slider_item.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final sKey = GlobalKey<ScaffoldState>();

  final colors = [
    Colors.blue,
    Colors.orange,
    Colors.green,
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: sKey,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                CarouselSlider.builder(
                  itemCount: 3,
                  itemBuilder: (context, index, pageViewIndex) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const AvailableVehiclesScreren(),
                        ),
                      ),
                      child: const CarouselSliderItem(color: Colors.orange),
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    height: 40.h,
                    autoPlayInterval: const Duration(seconds: 3),
                    initialPage: 0,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          currentIndex = index;
                        },
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        sKey.currentState!.openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const FlutterLogo(size: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchLocation(),
                          ),
                        );
                      },
                      child: const Text(
                        'Lalamove',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 50),
                  ],
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 60,
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        3,
                        (index) => buildDots(index: index),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  top: 35.h,
                  child: Card(
                    elevation: 2,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 100.h,
                        minHeight: 10.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () => showPickupTimeSheet(context: context),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.alarm,
                                    color: Colors.deepOrange,
                                    size: 18,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Pick up ASAP',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 18,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Divider(),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 20,
                              left: 16,
                              right: 16,
                            ),
                            child: Timeline.tileBuilder(
                              shrinkWrap: true,
                              theme: TimelineThemeData(
                                indicatorPosition: 0,
                                nodePosition: 0,
                                color: Colors.white,
                                connectorTheme: const ConnectorThemeData(
                                  thickness: 3.0,
                                ),
                              ),
                              builder: TimelineTileBuilder.connected(
                                itemCount: 2,
                                indicatorBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: Icon(
                                      index == 0
                                          ? Icons.radio_button_unchecked
                                          : Icons.location_on,
                                      color: Colors.deepOrange,
                                      size: 16,
                                    ),
                                  );
                                },
                                connectorBuilder: (_, index, connectorType) {
                                  return const SizedBox(
                                    height: 120,
                                    child: DashedLineConnector(
                                      color: Colors.deepOrange,
                                    ),
                                  );
                                },
                                itemExtentBuilder: (context, index) {
                                  return 80;
                                },
                                contentsBuilder: (_, __) => GestureDetector(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: const [
                                            Flexible(
                                              child: Text(
                                                '146 Purok 3, Calamba,4027 Laguna,'
                                                'Philippines',
                                                overflow: TextOverflow.clip,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                '146 Purok 3, Calamba,4027 Laguna,'
                                                'Philippines, #152 Majada Out Purok 3',
                                                overflow: TextOverflow.clip,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey.shade400,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Divider(),
                          SizedBox(
                            height: 55,
                            width: double.infinity,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SearchLocation(),
                                  ),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.add,
                                    color: Colors.deepOrange,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Add stop',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.deepOrange,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      drawer: const HomeDrawer(),
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.40),
              blurRadius: 0.1,
              spreadRadius: 1,
            )
          ],
        ),
        child: SizedBox(
          height: 60,
          width: double.infinity,
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BookingVehicleScreen(),
                ),
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Select Vehicle',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDots({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 700),
      width: 5,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: currentIndex == index
            ? Colors.white
            : Colors.white.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
      height: 5,
    );
  }

  void showPickupTimeSheet({required BuildContext context}) async {
    return await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Text(
                'Pickup Time',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              const PickupTimeTile(
                icon: Icons.alarm,
                title: 'ASAP',
              ),
              createLine(),
              const SizedBox(height: 20),
              const PickupTimeTile(
                icon: Icons.event_note,
                title: 'Later',
              ),
            ],
          ),
        );
      },
    );
  }

  Widget createLine() {
    return Row(
      children: const [
        SizedBox(width: 30),
        Expanded(child: Divider()),
      ],
    );
  }
}
