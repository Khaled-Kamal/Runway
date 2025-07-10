import 'package:flutter/material.dart';
import 'package:ranway/Models/Cards_Details.dart';
import 'package:ranway/Pages/Detials.dart';

import 'package:ranway/Widgets/Custome_AppBar.dart';
import 'package:ranway/Widgets/Product_item.dart';
import 'package:ranway/Widgets/SortFilterBar.dart';

class DetailsCategory extends StatelessWidget {
  const DetailsCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<CardsDetails> products = [
      CardsDetails(
        image: 'assets/image/man5.png',
        title: 'Gray coat and white T-sh..',
        price: '\$£30',
      ),
      CardsDetails(
        image: 'assets/image/man2.png',
        title: 'Gray coat and white T-sh..',
        price: '\$£30',
      ),
      CardsDetails(
        image: 'assets/image/man3.png',
        title: 'Gray coat and white T-sh..',
        price: '\$£30',
      ),
      CardsDetails(
        image: 'assets/image/man4.png',
        title: 'Top man black',
        price: '\$£20',
      ),
      CardsDetails(
        image: 'assets/image/man5.png',
        title: 'Deep gray essential regul..',
        price: '\$£40',
      ),
      CardsDetails(
        image: 'assets/image/man6.png',
        title: 'Top man black with Trous..',
        price: '\$£80',
      ),
    ];

    return Scaffold(
      appBar: CustomeAppbar(
        prefix: 'assets/image/arrow-left.svg',
        title: 'Men',
        Suffix: 'assets/image/bag.svg',
      ),

      body: Column(
        children: [
          SortFilterBar(),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1 / 1.6,
                ),
                itemBuilder: (context, index) {
                  final sho = products[index];

                  return ProductItem(
                    image: sho.image,
                    title: sho.title,
                    price: sho.price,
                    ontap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (c) => Detials()),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
