 import 'package:booking_tickets_app/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';

class TicketView extends StatelessWidget {
   const TicketView({super.key});
 
   @override
   Widget build(BuildContext context) {
    final size = AppLayout.getSize(context); 
     return SizedBox(
      width: size.width,
     );
   }
 }