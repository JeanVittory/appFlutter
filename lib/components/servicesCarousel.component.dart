import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import "../models/services.models.dart";
import "./itemServiceCarousel.component.dart";

class ServicesCarousel extends StatelessWidget {
  final List<Services> services;
  const ServicesCarousel({Key? key, required this.services}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: services.map((item) => ItemServiceCarousel(service: item)).toList(),
      options: CarouselOptions(
          height: 240,
          enableInfiniteScroll: false,
          reverse: false,
          viewportFraction: .86),
    );
  }
}
