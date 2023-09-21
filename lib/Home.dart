import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_app/Health.dart';
import 'package:health_app/Nearby.dart';
import 'package:health_app/UpcomingCard.dart';
import 'package:ionicons/ionicons.dart';
//import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //    backgroundColor: Colors.blueGrey[400],
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi Haider"),
            Text(
              "How Are You Feeling Today?",
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Ionicons.notifications_outline)),
          IconButton(onPressed: () {}, icon: Icon(Ionicons.search_outline))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(14),
        children: [
          //UpcomingCard
          UpcomingCard(),
          SizedBox(
            height: 20,
          ),
          Text(
            "Health Needs",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 15,
          ),
          //Health Needs
          HealthNeeds(),
          SizedBox(
            height: 15,
          ),

          Text(
            "Nearby Doctors",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: 15,
          ),
          //NearbyDoctor
          SingleChildScrollView(child: NearbyDoctors())
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          // backgroundColor: Colors.blue,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.calculator_outline), label: "Calender"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.chatbox_ellipses_outline), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_add_outline), label: "Profile"),
          ]),
    );
  }
}
