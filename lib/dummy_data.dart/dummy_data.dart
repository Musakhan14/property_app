import 'package:flutter/material.dart';

import '../Models/budget.dart';
import '../Models/categories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Models/cities.dart';
import '../Models/properties_list.dart';

// ignore: non_constant_identifier_names
final CATEGORIES = [
  Categories(id: 'houses', icon: Icons.home, cTitle: 'Houses'),
  Categories(id: 'land', icon: Icons.terrain, cTitle: 'Land'),
  Categories(id: 'Commercial', icon: Icons.location_city, cTitle: 'Commercial'),
  Categories(id: 'Apartment', icon: Icons.apartment, cTitle: 'Apartment'),
  Categories(id: 'office', icon: FontAwesomeIcons.chair, cTitle: 'Office'),
  Categories(id: 'shops', icon: Icons.store, cTitle: 'Shops'),
  Categories(id: 'plaza', icon: FontAwesomeIcons.building, cTitle: 'Plaza'),
  Categories(
      id: 'wareHouse', icon: FontAwesomeIcons.industry, cTitle: 'WareHouse'),
  // Categories(id: 'c9', icon: FontAwesomeIcons.building, cTitle: 'Apartment'),
  // Categories(id: 'c10', icon: FontAwesomeIcons.chair, cTitle: 'Office'),
];

// ignore: non_constant_identifier_names
final CITIES = [
  CitiesM(id: 'Chakdara', cityTitle: 'Chakdara'),
  CitiesM(id: 'Batkhela', cityTitle: 'Batkhela'),
  CitiesM(id: 'Peshawar', cityTitle: 'Peshawar'),
  CitiesM(id: 'Islamabd', cityTitle: 'Islamabd'),
  CitiesM(id: 'Lahore', cityTitle: 'Lahore'),
  CitiesM(id: 'Mardan', cityTitle: 'Mardan'),
  CitiesM(id: 'Multan', cityTitle: 'Multan'),
  CitiesM(id: 'Temergara', cityTitle: 'Temergara'),
  CitiesM(id: 'Islamabd', cityTitle: 'Islamabd'),
  CitiesM(id: 'Lahore', cityTitle: 'Lahore'),
  CitiesM(id: 'Mardan', cityTitle: 'Mardan'),
  CitiesM(id: 'Multan', cityTitle: 'Multan'),
  CitiesM(id: 'Temergara', cityTitle: 'Temergara'),
];

// ignore: non_constant_identifier_names
final PROPERTIES_DATA = [
  PropertiesM(
    baths: 3,
    beds: 6,
    title: '8 Kanals home',
    categories: ['Chakdara', 'b1', 'houses'],
    prizeCategory: 700000,
    id: 'm1',
    pImageUrl: 'assets/images/home.jpg',
    pLocation: 'Chakdara, University of Malakand',
    pPric: '800000 lakh',
  ),
  PropertiesM(
    baths: 0,
    beds: 0,
    categories: [
      'Batkhela',
      'b2',
      'land',
    ],
    prizeCategory: 120000,
    id: 'm2',
    pImageUrl: 'assets/images/land1.jpg',
    pLocation: 'Batkhela',
    pPric: '130000',
    title: '9 Kanals land',
  ),
  PropertiesM(
    baths: 3,
    beds: 2,
    categories: [
      'Chakdara',
      'b3',
      'land',
      'Commercial',
    ],
    prizeCategory: 56000000,
    id: 'm3',
    pImageUrl: 'assets/images/h3.jpeg',
    pLocation: 'Chakdara,University of Malakand',
    pPric: '15000000',
    title: ' commercial',
  ),
  PropertiesM(
    baths: 1,
    beds: 1,
    categories: ['Apartment', 'b4', 'Batkhela'],
    prizeCategory: 69000000,
    id: 'm4',
    pImageUrl: 'assets/images/apprt.jpg',
    pLocation: 'Batkhela',
    pPric: '2500000',
    title: ' appartment',
  ),
  PropertiesM(
    baths: 2,
    beds: 1,
    categories: [
      'Peshawar',
      'b4',
      'b5',
      'office',
    ],
    prizeCategory: 9000000,
    id: 'm5',
    pImageUrl: 'assets/images/h5.jpeg',
    pLocation: 'Peshawar, University Town',
    pPric: '2900000',
    title: 'office ',
  ),
  PropertiesM(
    baths: 2,
    beds: 4,
    prizeCategory: 10000000,
    id: 'm6',
    categories: ['shops', 'office', 'b4', 'b5', 'b6'],
    pImageUrl: 'assets/images/land1.jpg',
    pLocation: 'University of Malakand',
    pPric: '10000000',
    title: '4 Kanals house , office',
  ),
  PropertiesM(
    baths: 1,
    beds: 6,
    prizeCategory: 10000000,
    categories: ['plaza', 'b4', 'Temergara'],
    id: 'm7',
    pImageUrl: 'assets/images/h5.jpeg',
    pLocation: 'Temergara, Dir Lower',
    pPric: '3000000',
    title: '4 Kanals lqnd',
  ),
  PropertiesM(
    baths: 1,
    beds: 0,
    categories: ['wareHouse', 'b6', 'Islamabd'],
    prizeCategory: 10000000,
    id: 'm8',
    pImageUrl: 'assets/images/land1.jpg',
    pLocation: 'Islamabd',
    pPric: '4900000',
    title: '4 Kanals comme',
  ),
  // PropertiesM(
  //   categories: ['c9'],
  //   prizeCategory: 10000000,
  //   id: 'm9',
  //   pImageUrl: 'assets/images/land1.jpg',
  //   pLocation: 'University of Malakand',
  //   pPric: '10000000',
  //   title: '4 Kanals appartment',
  // ),
  PropertiesM(
    baths: 1,
    beds: 0,
    categories: [
      'Temergara',
      'b7',
      'land',
      'office',
    ],
    prizeCategory: 10000000,
    id: 'm10',
    pImageUrl: 'assets/images/land1.jpg',
    pLocation: 'Temergara, Dir lower',
    pPric: '6500000',
    title: '4 Kanals office appland',
  ),
];

// ignore: non_constant_identifier_names
final BUDGET = [
  Budget(id: 'b1', bTitle: 'Property under 8 lakhs'),
  Budget(id: 'b2', bTitle: 'Property under 15 lakhs'),
  Budget(id: 'b3', bTitle: 'Property under 20 lakhs'),
  Budget(id: 'b4', bTitle: 'Property under 30 lakhs'),
  Budget(id: 'b5', bTitle: 'Property under 40 lakhs'),
  Budget(id: 'b6', bTitle: 'Property under 50 lakhs'),
  Budget(id: 'b7', bTitle: 'Property under 60 lakhs'),
  Budget(id: 'b8', bTitle: 'Property under 70 lakhs'),
  Budget(id: 'b9', bTitle: 'Property under 80 lakhs'),
  Budget(id: 'b10', bTitle: 'Property under 90 lakhs'),
  Budget(id: 'b11', bTitle: 'Property under 100 lakhs'),
];
