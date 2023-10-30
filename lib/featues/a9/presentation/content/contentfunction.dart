import 'package:flutter/material.dart';

class Unboarding{
  String image;
  String title;
  String description;
  Unboarding({required this.image,required this.title,required this.description});
}

List <Unboarding> contents=[
  Unboarding(
    title: "Choose Product",
    image: "assets/images/a4images/a1.jpg",
    description: "Find your product Find your product Find your product"
  ),
  Unboarding(
      title: "Make Payment",
      image: "assets/images/a4images/a6.jpg",
      description: "Find your product Find your product Find your product"
  ),
  Unboarding(
      title: "Get Your Orders",
      image: "assets/images/a4images/a2.jpg",
      description: "Find your product Find your product Find your product"
  ),
];