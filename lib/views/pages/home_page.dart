import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/category.dart';
import 'package:fooddelivery_app/models/products.dart';
import 'package:fooddelivery_app/utils/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 22,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              //clip rounded rectangle <======= بتساعدني اعمل الحواف مقوسة للصورة في حال استخدمت النتوورك
              borderRadius: BorderRadius.circular(18),
              child: Image.network(
                  'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/delicious-food-banner-template-design-cd3994e39458960f4f33e73b8c60edb9_screen.jpg'),
            ),
            const SizedBox(
              height: 16,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Find your food!',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  itemCount: dummyCategories.length,
                  scrollDirection: Axis.horizontal,
                  //scrollable لكن الفرق انه هاي columnنفس ال
                  itemBuilder: (context, index) {
                    final dummyCategory = dummyCategories[index];
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              dummyCategory.imageUrl,
                              width: 60,
                            ),
                            const SizedBox(height: 4),
                            Text(dummyCategory.title),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 16),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dummyProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                final dummyProduct = dummyProducts[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.network(
                            dummyProduct.imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                          dummyProduct.name,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          dummyProduct.category.title,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        Text(
                          '\$ ${dummyProduct.price}',
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
