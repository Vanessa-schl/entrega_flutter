import 'package:entrega_flutter/pages/entregaFlutter.dart';
import 'package:flutter/material.dart';

class Entrega2 extends StatelessWidget {
  const Entrega2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            width: 375,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(210, 100, 62, 204),
            ),
            child: Image.asset(
              'assets/img/motinha.png',
              cacheWidth: 900,
              fit: BoxFit.contain,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Text(
              'Bring the Store to your\n Door',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 35),
            child: Text(
              'Pick your desired Fruits and Vegetable\n from Sthe application.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(height: 20), // Espaçamento entre o Text e os Cards
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 23,
                    height: 10,
                    color: Color.fromARGB(210, 124, 92, 211),
                  ),
                ),
              ),
              Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 13,
                    height: 10,
                    color: Colors.grey,
                  ),
                ),
              ),
              Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 13,
                    height: 10,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(210, 124, 92, 211),
                minimumSize: const Size(250, 70),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Entrega();
                    },
                  ),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
