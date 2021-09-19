import 'package:flutter/material.dart';
import 'package:lalamove_copy/presentation/home/booking/widgets/booking_priority_fee_sheet.dart';

import 'package:timelines/timelines.dart';
import 'package:sizer/sizer.dart';

import 'booking_price_details.dart';

const kTileHeight = 50.0;

class FindingADriverScreen extends StatefulWidget {
  const FindingADriverScreen({Key? key}) : super(key: key);

  @override
  FindingADriverScreenState createState() => FindingADriverScreenState();
}

class FindingADriverScreenState extends State<FindingADriverScreen> {
  int activeStep = 1; // Initial step set to 5.

  int upperBound = 6; // u

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Finding a driver',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: DraggableScrollableSheet(
          minChildSize: 0.25,
          maxChildSize: 1,
          initialChildSize: 0.25,
          builder: (context, scrollController) => SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                const SizedBox(height: 10),
                SizedBox(
                  height: 132,
                  width: double.infinity,
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.expand_more,
                          color: Colors.grey,
                          size: 30,
                        ),
                        Text(
                          'Finding a driver',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Expanded(
                          child: Divider(
                            height: 1,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: TextButton(
                            onPressed: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context)
                                          .viewInsets
                                          .bottom,
                                    ),
                                    child: const BookingPriorityFeeSheet(),
                                  );
                                },
                              );
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: Colors.deepOrange,
                                ),
                                Text(
                                  'Add Priority Fee',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  elevation: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Sep 19, 01:36 PM',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '#118587407256',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade500,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
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
                              return 100;
                            },
                            contentsBuilder: (_, __) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  Text(
                                    'Andrew: 09955430420',
                                    overflow: TextOverflow.clip,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey.shade400,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Divider(),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order contact number',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '9955430420',
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              'Service type',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Motorcycle',
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Divider(),
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.file_upload,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Share',
                                style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 10,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Cash',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '₱294',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BookingPriceDetailsScreen(),
                              ),
                            ),
                            child: const Text(
                              'Pricing Details',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.deepOrange,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.deepOrange,
                              ),
                            ),
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
      ),
    );
  }
}
