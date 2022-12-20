import 'package:booking_tickets_app/utils/app_layout.dart';
import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 3,
            spreadRadius: 2,
            blurStyle: BlurStyle.normal,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: const DecorationImage(
                  image: AssetImage("assets/images/hotel2.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
          const Gap(10),
          Text(
            'Open space',
            style: Styles.headLineStyle2.copyWith(color: Styles.hotelCardColor),
          ),
           const Gap(5),
          Text(
            'London',
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
           const Gap(15),
           Text(
            '45\$/night',
            style: Styles.headLineStyle1.copyWith(color: Styles.hotelCardColor),
          ),
        ],
      ),
    );
  }
}
