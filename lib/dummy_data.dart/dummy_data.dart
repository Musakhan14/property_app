import 'package:flutter/material.dart';

import '../Models/budget.dart';
import '../Models/categories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Models/properties_list.dart';

// ignore: non_constant_identifier_names
final CATEGORIES = [
  Categories(id: 'houses', icon: Icons.home, cTitle: 'Houses'),
  Categories(id: 'land', icon: FontAwesomeIcons.earthAsia, cTitle: 'Land'),
  Categories(id: 'Commercial', icon: Icons.location_city, cTitle: 'Commercial'),
  Categories(
      id: 'Apartment', icon: FontAwesomeIcons.building, cTitle: 'Apartment'),
  Categories(id: 'office', icon: FontAwesomeIcons.chair, cTitle: 'Office'),
  Categories(id: 'shops', icon: Icons.home, cTitle: 'Shops'),
  // Categories(id: 'c7', icon: FontAwesomeIcons.earthAsia, cTitle: 'Land'),
  // Categories(id: 'c8', icon: Icons.location_city, cTitle: 'Commercial'),
  // Categories(id: 'c9', icon: FontAwesomeIcons.building, cTitle: 'Apartment'),
  // Categories(id: 'c10', icon: FontAwesomeIcons.chair, cTitle: 'Office'),
];

// ignore: non_constant_identifier_names
final PROPERTIES_DATA = [
  PropertiesM(
    title: '8 Kanals home',
    categories: [
      'houses',
      'land',
    ],
    prizeCategory: 2000000,
    id: 'm1',
    pImageUrl: 'assets/images/land1.jpg',
    pLocation: 'University of Malakand',
    pPric: '2000000 lakh',
  ),
  PropertiesM(
    categories: [
      'land',
    ],
    prizeCategory: 2900000,
    id: 'm2',
    pImageUrl: 'assets/images/land1.jpg',
    pLocation: 'Ramora',
    pPric: '870000',
    title: '9 Kanals land',
  ),
  PropertiesM(
    categories: [
      'land',
      'Commercial',
    ],
    prizeCategory: 56000000,
    id: 'm3',
    pImageUrl: 'assets/images/land1.jpg',
    pLocation: 'University of Malakand',
    pPric: '56000000',
    title: '4 Kanals commercial land',
  ),
  PropertiesM(
    categories: ['Apartment'],
    prizeCategory: 69000000,
    id: 'm4',
    pImageUrl: 'assets/images/land1.jpg',
    pLocation: 'Batkhela',
    pPric: '69000000',
    title: '4 Kanals appartment',
  ),
  PropertiesM(
    categories: [
      'office',
    ],
    prizeCategory: 9000000,
    id: 'm5',
    pImageUrl: 'assets/images/land1.jpg',
    pLocation: 'University of Malakand',
    pPric: '9000000',
    title: '4 Kanals office com office ',
  ),
  PropertiesM(
    prizeCategory: 10000000,
    id: 'm6',
    categories: ['shops', 'office'],
    pImageUrl: 'assets/images/land1.jpg',
    pLocation: 'University of Malakand',
    pPric: '10000000',
    title: '4 Kanals house , office',
  ),
  // PropertiesM(
  //   prizeCategory: 10000000,
  //   categories: ['c7'],
  //   id: 'm7',
  //   pImageUrl: 'assets/images/land1.jpg',
  //   pLocation: 'University of Malakand',
  //   pPric: '10000000',
  //   title: '4 Kanals lqnd',
  // ),
  // PropertiesM(
  //   categories: ['c8'],
  //   prizeCategory: 10000000,
  //   id: 'm8',
  //   pImageUrl: 'assets/images/land1.jpg',
  //   pLocation: 'University of Malakand',
  //   pPric: '10000000',
  //   title: '4 Kanals comme',
  // ),
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
    categories: [
      'land',
      'office',
    ],
    prizeCategory: 10000000,
    id: 'm10',
    pImageUrl: 'assets/images/land1.jpg',
    pLocation: 'University of Malakand',
    pPric: '10000000',
    title: '4 Kanals office appland',
  ),
];

// ignore: non_constant_identifier_names
final BUDGET = [
  Budget(bFunction: () {}, bTitle: 'Property under 8 lakhs'),
  Budget(bFunction: () {}, bTitle: 'Property under 5 lakhs'),
  Budget(bFunction: () {}, bTitle: 'Property under 5 lakhs'),
  Budget(bFunction: () {}, bTitle: 'Property under 5 lakhs'),
  Budget(bFunction: () {}, bTitle: 'Property under 5 lakhs'),
  Budget(bFunction: () {}, bTitle: 'Property under 5 lakhs'),
  Budget(bFunction: () {}, bTitle: 'Property under 5 lakhs'),
  Budget(bFunction: () {}, bTitle: 'Property under 5 lakhs'),
  Budget(bFunction: () {}, bTitle: 'Property under 5 lakhs'),
  Budget(bFunction: () {}, bTitle: 'Property under 5 lakhs'),
  Budget(bFunction: () {}, bTitle: 'Property under 5 lakhs'),
];
