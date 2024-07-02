import 'package:flutter/material.dart';

import 'Details.dart';

class ListingItem {
  final String image;
  final String title;
  final String price;

  ListingItem({required this.image, required this.title, required this.price});
}

class Listing extends StatelessWidget {
  Listing({super.key});

  final List<ListingItem> items = [
    ListingItem(
        image: 'assets/images/Media1.png', title: 'Title 1', price: '11.1'),
    ListingItem(
        image: 'assets/images/Media2.png', title: 'Title 2', price: '11.1'),
    ListingItem(
        image: 'assets/images/Media3.png', title: 'Title 3', price: '11.1'),
    ListingItem(
        image: 'assets/images/Media4.png', title: 'Title 4', price: '11.1'),
    ListingItem(
        image: 'assets/images/Media5.png', title: 'Title 4', price: '11.1'),
    ListingItem(
        image: 'assets/images/Media6.png', title: 'Title 4', price: '11.1'),
    // Add more items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset(
                  "assets/images/vector.png",
                  width: 32,
                  height: 32,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, left: 16),
              child: Text(
                'Vegetables',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      "assets/images/search.png",
                      width: 18,
                      height: 18,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Search',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color:  const Color(0xFFE2CBFF),
                      borderRadius: BorderRadius.circular(10),
                     ),
                    child: const Text(
                      "Сabbage and lettuce (14)",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF6C0EE4),
                      ),
                    ),
                  ),
                  SizedBox(width: 12,),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Сabbage (14)",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Сabbage ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 12,),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Сabbage (14)",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ), SizedBox(width: 12,),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "Сabbage (14)",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      //

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  Details(),
                        ),
                      );

                    },
                    child: ListingCell(
                      item: items[index],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListingCell extends StatelessWidget {
  final ListingItem item;

  const ListingCell({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Image.asset(
            item.image,
            fit: BoxFit.fill,
            width: 177,
            height: 130,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        item.price,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "JOD / Piece",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Image.asset(
                          "assets/images/heart.png",
                          width: 22,
                          height: 22,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey, width: 1),
                        ),
                        child: Image.asset(
                          "assets/images/shoppingCartWhite.png",
                          width: 22,
                          height: 22,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
