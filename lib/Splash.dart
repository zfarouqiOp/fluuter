import 'package:flutter/material.dart';

import 'TabBarController.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: SizedBox(
                height: 400,
                child: Image.asset(
                  'assets/images/bg.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 32,
              child: SizedBox(
                height: 63,
                width: 63,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 300,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      Image.asset("assets/images/Icon.png"),
                      const Text(
                        'Non-Contact \n Deliveries',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16, top: 16,bottom: 16),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TabBarController(),
                              ),
                            );
                          },
                          child: Container(
                            width: 300,
                            height: 48,
                            color: Colors.green,
                            child: const Center(
                              child: Text(
                                'Order Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Text(
                        "Dismiss",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
