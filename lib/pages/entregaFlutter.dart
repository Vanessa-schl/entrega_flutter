import 'package:flutter/material.dart';
import 'package:entrega_flutter/pages/checkout.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _counter = 2;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Flexible(
                    child: Center(
                      child: Text(
                        'Mango',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      color: Color.fromARGB(255, 167, 104, 179),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 23),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/img/mango.png',
                        width: 240,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      width: 140,
                      margin: const EdgeInsets.symmetric(vertical: 14),
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipOval(
                            child: Material(
                              color: const Color.fromARGB(255, 255, 255,
                                  255), // cor de fundo do botão "-"
                              child: InkWell(
                                onTap: _decrementCounter,
                                child: const SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Center(
                                    child: Text(
                                      '-',
                                      style: TextStyle(
                                        fontSize:
                                            35, // tamanho da fonte do botão "-"
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: const Color.fromARGB(255, 241, 170,
                                224), // cor de fundo do CircleAvatar
                            child: Text(
                              '$_counter',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                          ClipOval(
                            child: Material(
                              color: const Color.fromARGB(255, 255, 255,
                                  255), // cor de fundo do botão "+"
                              child: InkWell(
                                onTap: _incrementCounter,
                                child: const SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Center(
                                    child: Text(
                                      '+',
                                      style: TextStyle(
                                        fontSize:
                                            20, // tamanho da fonte do botão "+"
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Duncan Mango',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.w900),
                              ),
                              Text(
                                '\$2.00PC',
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromARGB(255, 179, 144, 235),
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              'Description',
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            text: const TextSpan(
                              text:
                                  'A mango is a sweet tropical fruit, and it\'s also the name of the trees on which the fruit grows...',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'See More',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 179, 144,
                                          235) // ou outra cor roxa de sua escolha
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 241, 170, 224),
                                        borderRadius: BorderRadius.circular(8),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: const Icon(
                                        Icons.star_border_rounded,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        size: 30,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    const Text(
                                      "4.8 Star",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 241, 170, 224),
                                        borderRadius: BorderRadius.circular(8),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: const Icon(
                                        Icons.access_time_outlined,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const Text(
                                      "1 Day",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              'Other Items',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 90,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 241, 208, 227),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/img/tomate.png',
                                  cacheWidth: 40,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                width: 90,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 202, 240, 203),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/img/alface.png',
                                  cacheWidth: 50,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                width: 90,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 252, 242, 197),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset('assets/img/pimentao.png',
                                    cacheWidth: 50),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Botão "Add to cart"
                              Container(
                                margin: EdgeInsets.only(top: 20.0),
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Add to cart',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 25),
                              // Botão "Buy now"
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return MyWidget2();
                                      },
                                    ),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 20.0),
                                  width: 150,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 158, 122, 218),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Buy now',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
