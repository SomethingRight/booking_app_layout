import 'package:booking_tickets_app/utils/app_layout.dart';
import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/circle_dot_widget.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width * 0.85,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 3,
                spreadRadius: 2,
                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
          margin: const EdgeInsets.only(right: 18),
          child: Column(
            children: [
              /* Showing the blue part of ticket
              */
              Container(
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(15),
                      topEnd: Radius.circular(15)),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'NYC',
                          style: Styles.ticketStyle,
                        ),
                        Expanded(child: Container()),
                        const CircleDotWidget(),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  print(
                                      'The width is ${constraints.constrainWidth()}');
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 7)
                                          .floor(),
                                      (index) => const SizedBox(
                                        height: 1,
                                        width: 3,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        )),
                        const CircleDotWidget(),
                        Expanded(child: Container()),
                        Text(
                          'LDN',
                          style: Styles.ticketStyle,
                        ),
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New-York',
                          style: Styles.ticketStyle,
                        ),
                        Text(
                          '8H 31M',
                          style: Styles.ticketStyle,
                        ),
                        Text(
                          'London',
                          style: Styles.ticketStyle,
                        ),
                      ],
                    )
                  ],
                ),
              )
              /*Showing the first orange part of ticket
            */
              ,
              Container(
                color: Styles.orangeColor,
                child: Row(
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            print(
                                'The width is ${constraints.constrainWidth()}');
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => const SizedBox(
                                  height: 1,
                                  width: 5,
                                  child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white)),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              /*Showing the second orange part of ticket
            */
              Container(
                padding: const EdgeInsets.only(
                    bottom: 16, left: 16, right: 16, top: 10),
                decoration: BoxDecoration(
                    color: Styles.orangeColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '1 MAY',
                          style: Styles.ticketStyle,
                        ),
                        const Gap(5),
                        Text(
                          'Date',
                          style: Styles.ticketStyle,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '08:00 AM',
                          style: Styles.ticketStyle,
                        ),
                        const Gap(5),
                        Text(
                          'Departure time',
                          style: Styles.ticketStyle,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '23',
                          style: Styles.ticketStyle,
                        ),
                        const Gap(5),
                        Text(
                          'Number',
                          style: Styles.ticketStyle,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
