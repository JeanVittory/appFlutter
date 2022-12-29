import 'package:flutter/material.dart';
import 'package:uiflutter/components/servicesCarousel.component.dart';
import 'package:uiflutter/models/services.models.dart';
import '../components/inputProduct.component.dart';
import "../components/Appbar.component.dart";


class Restaurants extends StatelessWidget {
  Restaurants({Key? key}) : super(key: key);

  final List<Services> services = [
    Services(
      icon: Image.file(file),
      service: "hello"
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffEFEFEF),
      body: ListView(
        children: [
          const Appbar(),
          _userLocation(context),
          const InputProducts(),
          ServicesCarousel(services: services)
        ],
      ),
    ));
  }

  Widget _userLocation(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 30),
          child:
              Text("Deliver to", style: Theme.of(context).textTheme.headline2),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 26),
          child: Row(
            children: [
              Icon(Icons.location_on_outlined,
                  size: 20, color: Theme.of(context).secondaryHeaderColor),
              Text(
                "Cali, COL",
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        )
      ],
    );
  }
}
