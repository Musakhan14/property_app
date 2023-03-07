import 'package:flutter/material.dart';
import 'package:property_app/Screens/properties_screen.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 0.0,
          childAspectRatio: 0.40,
          mainAxisSpacing: 2.0,
        ),
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList()));
            },
            child: const Text(
              'Property under 20 lakhs',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList()));
            },
            child: const Text(
              'Property under 30 lakhs',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList()));
            },
            child: const Text(
              'Property under 40 lakhs',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList(
                          // cId: '',
                          // cTitle: '',
                          )));
            },
            child: const Text(
              'Property under 50 lakhs',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList(
                          // cId: '',
                          // cTitle: '',
                          )));
            },
            child: const Text(
              'Property under 60 lakhs',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList(
                          // cId: '',
                          // cTitle: '',
                          )));
            },
            child: const Text(
              'Property under 70 lakhs',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList(
                          // cId: '',
                          // cTitle: '',
                          )));
            },
            child: const Text(
              'Property under 1 crore',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList(
                          // cId: '',
                          // cTitle: '',
                          )));
            },
            child: const Text(
              'Property under 2 crore',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList(
                          // cId: '',
                          // cTitle: '',
                          )));
            },
            child: const Text(
              'Property under 4 crore',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList(
                          // cId: '',
                          // cTitle: '',
                          )));
            },
            child: const Text(
              'Property under 4 crore',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList(
                          // cId: '',
                          // cTitle: '',
                          )));
            },
            child: const Text(
              'Property under 4 crore',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList(
                          // cId: '',
                          // cTitle: '',
                          )));
            },
            child: const Text(
              'Property under 4 crore',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PropertiesList(
                          // cId: '',
                          // cTitle: '',
                          )));
            },
            child: const Text(
              'Property under 4 crore',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
