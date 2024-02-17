import 'package:fooddelivery_app/models/category.dart';

class Product {
  final String id;
  final String name;
  final String imageUrl;
  final String description;
  final double price;
  final Category category;

  Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.description =
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    required this.price,
    required this.category,
  });
}

List<Product> favProducts = [];

List<Product> dummyProducts = [
  Product(
      id: '1',
      category: dummyCategories[0],
      name: 'Beef Burger',
      imageUrl:
          'https://static.vecteezy.com/system/resources/thumbnails/022/911/694/small/cute-cartoon-burger-icon-free-png.png',
      price: 6.99),
  Product(
      id: '2',
      category: dummyCategories[0],
      name: 'Chicken Burger',
      imageUrl:
          'https://assets.stickpng.com/images/58824b33e81acb96424ffab9.png',
      price: 5.99),
  Product(
      id: '3',
      category: dummyCategories[0],
      name: 'Cheese Burger',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/1/11/Cheeseburger.png',
      price: 7.99),
  Product(
      id: '4',
      category: dummyCategories[2],
      name: 'Chicken Pizza',
      imageUrl:
          'https://www.pngkey.com/png/full/70-701336_california-chicken-pizza-butter-chicken-pizza-png.png',
      price: 9.99),
  Product(
      id: '5',
      category: dummyCategories[2],
      name: 'Margreta Pizza',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/e/ee/Eq_it-na_pizza-margherita_sep2005_sml-2.png',
      price: 8.99),
  Product(
      id: '6',
      category: dummyCategories[6],
      name: 'Lazania',
      imageUrl:
          'https://www.pngkey.com/png/full/155-1551891_0-chicken-lasagna-pasta-png.png',
      price: 8.99),
  Product(
      id: '6',
      category: dummyCategories[6],
      name: 'Fettuccine Alfredo',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/035/906/770/non_2x/ai-generated-fettuccine-alfredo-pasta-with-basil-garnish-free-png.png',
      price: 9.99),
  Product(
      id: '6',
      category: dummyCategories[6],
      name: 'Bolognese',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/027/297/814/non_2x/spaghetti-with-tomato-sauce-and-basil-in-a-plate-isolated-on-white-background-ai-generate-png.png',
      price: 6.99),
  Product(
      id: '7',
      category: dummyCategories[1],
      name: 'Beef Taco',
      imageUrl:
          'https://cdn.pixabay.com/photo/2023/07/24/17/09/mexican-8147497_640.png',
      price: 6.99),
  Product(
      id: '8',
      category: dummyCategories[4],
      name: 'Fried Chicken',
      imageUrl:
          'https://www.freepnglogos.com/uploads/fried-chicken-png/crispy-fried-chicken-png-0.png',
      price: 7.99),
  Product(
      id: '9',
      category: dummyCategories[4],
      name: 'Grilled Chicken',
      imageUrl:
          'https://static.vecteezy.com/system/resources/previews/021/665/568/original/delicious-grilled-chicken-cutout-png.png',
      price: 9.99),
  Product(
      id: '10',
      category: dummyCategories[5],
      name: 'cup Cake',
      imageUrl:
          'https://img.freepik.com/free-psd/freshly-cupcake-png-isolated-transparent-background_191095-9778.jpg',
      price: 5.99),
  Product(
      id: '10',
      category: dummyCategories[5],
      name: 'Blackberry Cake',
      imageUrl:
          'https://img.freepik.com/free-psd/tasty-blackberry-cake-isolated-transparent-background_191095-10372.jpg',
      price: 6.00),
  Product(
      id: '10',
      category: dummyCategories[5],
      name: 'Vanilla Cake',
      imageUrl:
          'https://img.freepik.com/free-psd/delicious-vanilla-cake-decorated-with-berries-isolated-transparent-background_191095-11775.jpg',
      price: 4.99),
];
