import 'package:booking_tickets_app/screens/hotel_view.dart';
import 'package:booking_tickets_app/screens/ticket_view.dart';
import 'package:booking_tickets_app/utils/app_info_list.dart';
import 'package:booking_tickets_app/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          child: Column(
            children: [
              const Gap(30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(2),
                        Text(
                          'Book tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          //color: Styles.primaryColor,
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/plane4.png"),
                              fit: BoxFit.contain)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 8, 20, 4),
                child: TextField(
                  enabled: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search),
                      labelText: 'search',
                      labelStyle: Styles.headLineStyle4,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      )),
                ),
              ),
              const Gap(15),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming flights',
                      style: Styles.headLineStyle2,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text('View all',
                            style: Styles.textStyle
                                .copyWith(color: Styles.primaryColor)))
                  ],
                ),
              ),
              const Gap(15),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: 
                      ticketsInfo.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
                  )),
              const Gap(15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hotels',
                      style: Styles.headLineStyle2,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text('View all',
                            style: Styles.textStyle
                                .copyWith(color: Styles.primaryColor)))
                  ],
                ),
              ),
              const Gap(10),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: hotelList.map((singleHotel) => HotelView(hotel: singleHotel)).toList(),
                  )),
              const Gap(15),
            ],
          ),
        )
      ]),
    );
  }
}
