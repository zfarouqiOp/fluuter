import 'package:flutter/material.dart';
import 'package:untitled1/Listing.dart';

class GridItem {
  final String image;
  final String title;
  final String subtitle;

  GridItem({required this.image, required this.title, required this.subtitle});
}

class Home extends StatelessWidget {
   Home({super.key});

  final List<GridItem> items = [
    GridItem(image: 'assets/images/Media1.png', title: 'Title 1', subtitle: 'Subtitle 1'),
    GridItem(image: 'assets/images/Media2.png', title: 'Title 2', subtitle: 'Subtitle 2'),
    GridItem(image: 'assets/images/Media3.png', title: 'Title 3', subtitle: 'Subtitle 3'),
    GridItem(image: 'assets/images/Media4.png', title: 'Title 4', subtitle: 'Subtitle 4'),
    GridItem(image: 'assets/images/Media5.png', title: 'Title 4', subtitle: 'Subtitle 4'),
    GridItem(image: 'assets/images/Media6.png', title: 'Title 4', subtitle: 'Subtitle 4'),
    // Add more items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFF6F5F5),
          child: Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 16),
                  child: GestureDetector(
                    onTap: (){
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
                  padding: EdgeInsets.only(top: 8,left: 16),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold
                    ),
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
                        const SizedBox(width: 16,),
                        Image.asset(
                          "assets/images/search.png",
                          width: 18,
                          height: 18,
                        ),
                        const SizedBox(width: 16,),
                        const Text(
                          'Search',
                          style: TextStyle(
                              fontSize: 18,
                            color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.9,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return GridItemWidget(item: items[index], pressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  Listing(),
                            ),
                          );
                        },);
                      },
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
class GridItemWidget extends StatelessWidget {
  final GridItem item;
final VoidCallback pressed;
  GridItemWidget({required this.item, required this.pressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        pressed();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(item.image,fit: BoxFit.fill,),
            const SizedBox(height: 10),
            Text(
              item.title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              item.subtitle,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
