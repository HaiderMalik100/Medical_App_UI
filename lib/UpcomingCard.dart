import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      padding: EdgeInsets.symmetric(vertical: 22, horizontal: 20),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              //child: Icon(Icons.ac_unit),
              child: Image.asset('asset/images/doctor_2.jpg', width: 45)),
          SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Dr. Winnie Ballard",
                    style: TextStyle(
                        fontSize: 18,
                        //    fontFamily:FontWeight.bold,
                        color: Colors.white),
                  )),
              Text(
                "Dental Specialist",
                style: TextStyle(color: Colors.white70),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(children: [
                  Icon(
                    Ionicons.calendar_outline,
                    size: 18,
                    color: Colors.white,
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 14, left: 6),
                      child: Text(
                        "Today",
                        style: TextStyle(color: Colors.white),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Icon(
                      Ionicons.time_outline,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "14:30 - 15:30 AM",
                    style: TextStyle(color: Colors.white),
                  )
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
