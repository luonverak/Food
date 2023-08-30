import 'package:demo3/product/widget/text_style.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../model/product.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key, required this.productData});
  final ProductData productData;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

int? count = 1;

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: widget.productData.id,
        child: ListView(
          children: [
            Stack(
              children: [
                Image.asset(widget.productData.image),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: const Color.fromARGB(199, 255, 255, 255),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: const Color.fromARGB(199, 255, 255, 255),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.shopping_cart,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 3.1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[900]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (count! > 0) {
                                count = (count! - 1);
                              }
                            });
                          },
                          icon: const Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                        FontStyleText(
                          text: '$count',
                          sizeText: 20,
                          weightText: FontWeight.bold,
                          colorText: Colors.white,
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              count = (count! + 1);
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FontStyleText(
                        text: widget.productData.name,
                        sizeText: 23,
                        weightText: FontWeight.bold,
                      ),
                      FontStyleText(
                        text: '\$ ${widget.productData.price}',
                        sizeText: 20,
                        weightText: FontWeight.bold,
                        colorText: Colors.red,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ReadMoreText(
                    widget.productData.description,
                    style: const TextStyle(fontSize: 15),
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Read More',
                    trimExpandedText: 'Show less',
                    lessStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                    moreStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
 
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blue[900]),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(18),
                  child: FontStyleText(
                    text: 'Add to Card',
                    sizeText: 20,
                    colorText: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
