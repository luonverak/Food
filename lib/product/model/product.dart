class ProductData {
  late int id;
  late String name;
  late String image;
  late String description;
  late bool favorite;
  late double price;
  late int qty;

  ProductData({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.favorite,
    required this.price,
    required this.qty,
  });
}

List<ProductData> listProduct = [
  ProductData(
    id: 1,
    name: "Burger",
    image: "asset/image/burger.jpg",
    description:
        "From bbq baked beans and sweet potato fries to creamy coleslaw and mac and cheese, I’ve rounded up almost 30 hamburger sides I know you’ll love!Because as tasty as a burger is on its own, it’s even better with something on the side.I’m talking buttery grilled corn, crunchy fried pickles, rich potato salad, and more!So bookmark this list for the next time you need some tasty sides for burgers!From bbq baked beans and sweet potato fries to creamy coleslaw and mac and cheese, I’ve rounded up almost 30 hamburger sides I know you’ll love!Because as tasty as a burger is on its own, it’s even better with something on the side.I’m talking buttery grilled corn, crunchy fried pickles, rich potato salad, and more!So bookmark this list for the next time you need some tasty sides for burgers!From bbq baked beans and sweet potato fries to creamy coleslaw and mac and cheese, I’ve rounded up almost 30 hamburger sides I know you’ll love!Because as tasty as a burger is on its own, it’s even better with something on the side.I’m talking buttery grilled corn, crunchy fried pickles, rich potato salad, and more!So bookmark this list for the next time you need some tasty sides for burgers!",
    favorite: true,
    price: 10,
    qty: 1,
  ),
  ProductData(
    id: 2,
    name: "Pizza",
    image: "asset/image/istockphoto-.jpg",
    description:
        "From bbq baked beans and sweet potato fries to creamy coleslaw and mac and cheese, I’ve rounded up almost 30 hamburger sides I know you’ll love!Because as tasty as a burger is on its own, it’s even better with something on the side.I’m talking buttery grilled corn, crunchy fried pickles, rich potato salad, and more!So bookmark this list for the next time you need some tasty sides for burgers!",
    favorite: true,
    price: 12,
    qty: 1,
  ),
  ProductData(
    id: 3,
    name: "Filipino",
    image: "asset/image/filipino-snacks-chicharon3.webp",
    description:
        "From bbq baked beans and sweet potato fries to creamy coleslaw and mac and cheese, I’ve rounded up almost 30 hamburger sides I know you’ll love!Because as tasty as a burger is on its own, it’s even better with something on the side.I’m talking buttery grilled corn, crunchy fried pickles, rich potato salad, and more!So bookmark this list for the next time you need some tasty sides for burgers!",
    favorite: true,
    price: 3,
    qty: 1,
  ),
  ProductData(
    id: 4,
    name: "Filipino",
    image: "asset/image/filipino-snacks-turon1.webp",
    description: "Snack",
    favorite: true,
    price: 2,
    qty: 1,
  ),
  ProductData(
    id: 5,
    name: "Coca with Pukcon",
    image: "asset/image/istockphoto.jpg",
    description:
        "From bbq baked beans and sweet potato fries to creamy coleslaw and mac and cheese, I’ve rounded up almost 30 hamburger sides I know you’ll love!Because as tasty as a burger is on its own, it’s even better with something on the side.I’m talking buttery grilled corn, crunchy fried pickles, rich potato salad, and more!So bookmark this list for the next time you need some tasty sides for burgers!",
    favorite: true,
    price: 5,
    qty: 1,
  ),
  ProductData(
    id: 6,
    name: "Hot Dog Korean",
    image: "asset/image/side-shot-Korean-corn-dog.jpg",
    description:
        "From bbq baked beans and sweet potato fries to creamy coleslaw and mac and cheese, I’ve rounded up almost 30 hamburger sides I know you’ll love!Because as tasty as a burger is on its own, it’s even better with something on the side.I’m talking buttery grilled corn, crunchy fried pickles, rich potato salad, and more!So bookmark this list for the next time you need some tasty sides for burgers!",
    favorite: true,
    price: 5,
    qty: 1,
  ),
  ProductData(
    id: 7,
    name: "Checken Korean",
    image: "asset/image/244200.png",
    description:
        "From bbq baked beans and sweet potato fries to creamy coleslaw and mac and cheese, I’ve rounded up almost 30 hamburger sides I know you’ll love!Because as tasty as a burger is on its own, it’s even better with something on the side.I’m talking buttery grilled corn, crunchy fried pickles, rich potato salad, and more!So bookmark this list for the next time you need some tasty sides for burgers!",
    favorite: true,
    price: 15,
    qty: 1,
  ),
];
