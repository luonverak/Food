import 'package:demo3/product/model/product.dart';
import 'package:flutter/material.dart';

import '../widget/text_style.dart';
import 'detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Food App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.4,
        children: List.generate(
            listProduct.length, (index) => buildItem(listProduct[index])),
      ),
    );
  }

  Widget buildItem(ProductData product) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailScreen(productData: product),
        ));
      },
      child: Hero(
        tag: product.id,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      // width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue[900],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(product.image),
                        ),
                      ),
                    ),
                    Positioned(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: FontStyleText(
                        text: product.name,
                        sizeText: 18,
                        weightText: FontWeight.bold,
                        line: 1,
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: FontStyleText(
                        text: '\$ ${product.price}',
                        sizeText: 18,
                        weightText: FontWeight.bold,
                        colorText: Colors.red,
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
