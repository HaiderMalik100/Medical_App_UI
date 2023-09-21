import 'package:flutter/material.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon(Icon: "asset/images/appointment.png", name: "Appointment"),
      CustomIcon(Icon: "asset/images/hospital.png", name: "Hospital"),
      CustomIcon(Icon: "asset/images/virus.png", name: "Covid-19"),
      CustomIcon(Icon: "asset/images/more.png", name: "More")
    ];
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(customIcons.length, (index) {
          return Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.4),
                ),
                child: Image.asset(customIcons[index].Icon),
              ),
              SizedBox(
                height: 6,
              ),
              Text(customIcons[index].name)
            ],
          );
        }));
  }
}

class CustomIcon {
  final String Icon;
  final String name;
  CustomIcon({required this.Icon, required this.name});
}
