import 'package:flutter/material.dart';
import 'package:property_app/Screens/auth/signup_screen.dart';
import 'package:property_app/Screens/tab_screens/societies_screen.dart';
import 'package:property_app/Screens/tab_screens/cities_screen.dart';

import '../Widgets/app_drawer.dart';
import '../Widgets/recommende_properties.dart';
import 'tab_screens/budget_screen.dart';
import 'tab_screens/category_screeen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // App Drawer
      drawer: const AppDrawe(),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupPage()));
              },
              icon: const Icon(Icons.person_outlined))
        ],
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Property App',
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    // TextField For search
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        suffixIcon: const Icon(Icons.done),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Theme.of(context).primaryColor,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Different Categories
            DefaultTabController(
                length: 4, // length of tabs
                initialIndex: 0,
                child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      TabBar(
                        indicatorColor: Theme.of(context).primaryColor,
                        labelColor: Theme.of(context).primaryColor,
                        unselectedLabelColor: Colors.black,
                        tabs: const [
                          Tab(text: 'Category'),
                          Tab(text: 'Budget'),
                          Tab(text: 'Cities'),
                          Tab(text: 'Societies'),
                        ],
                      ),
                      //Different Categories screens
                      Container(
                        // width: double.infinity,
                        // height: 270,
                        height: MediaQuery.of(context).size.height *
                            0.35, //height of TabBarView
                        decoration: const BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: Colors.grey, width: 0.5))),
                        child: const TabBarView(children: [
                          CategoryScreen(),
                          BudgetScreen(),
                          Cities(),
                          SocietiesScreen(),
                        ]),
                      )
                    ])),
            //
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Recommended',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      RecommendedProperties(
                        image: 'assets/images/h1.jpeg',
                        forSale: 'For Sale',
                        location: 'UOM',
                        price: 100000,
                      ),
                      SizedBox(width: 8),
                      RecommendedProperties(
                        image: 'assets/images/h5.jpeg',
                        forSale: 'For Sale',
                        location: 'UOM',
                        price: 100000,
                      ),
                      SizedBox(width: 8),
                      RecommendedProperties(
                        image: 'assets/images/h3.jpeg',
                        forSale: 'For Sale',
                        location: 'UOM',
                        price: 100000,
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
