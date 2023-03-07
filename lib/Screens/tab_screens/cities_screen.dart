import 'package:flutter/material.dart';
import 'package:property_app/Screens/home_screen.dart';

class Cities extends StatelessWidget {
  const Cities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: .0,
          childAspectRatio: 0.60,
          mainAxisSpacing: 2.0,
        ),
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Lahor',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Peshawar',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Karachi',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Multan',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Quetta',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Mardan',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Sialkot',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Faisalabd',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Swabi',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Temergara',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Mansehra',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Gujranwala',
              style: TextStyle(
                color: Color.fromARGB(255, 129, 125, 125),
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Text(
              'Sargodha',
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
