import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/category.dart';
import 'package:fooddelivery_app/models/products.dart';
import 'package:fooddelivery_app/utils/app_colors.dart';
import 'package:fooddelivery_app/utils/app_routes.dart';
import 'package:fooddelivery_app/views/pages/product_details.dart';
import 'package:fooddelivery_app/views/widgets/product_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedCategoryId;
  late List<Product> filteredProducts;
  @override
  void initState() {
    super.initState();
    filteredProducts = dummyProducts;
    debugPrint('HomePage initState()');
  }

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
                    return InkWell(
                      onTap: () {
                        setState(() {
                          if (selectedCategoryId != null &&
                              selectedCategoryId == dummyCategory.id) {
                            selectedCategoryId = null;
                            filteredProducts = dummyProducts;
                          } else {
                            selectedCategoryId = dummyCategory.id;
                            filteredProducts = dummyProducts
                                .where((product) =>
                                    product.category.id == selectedCategoryId)
                                .toList();
                          }
                        });
                      },
                      child: Card(
                        color: selectedCategoryId == dummyCategory.id
                            ? Theme.of(context).primaryColor
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                dummyCategory.imageUrl,
                                width: 60,
                                color: selectedCategoryId == dummyCategory.id
                                    ? AppColor.white
                                    : null,
                              ),
                              const SizedBox(height: 4),
                              Text(dummyCategory.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                        color: selectedCategoryId ==
                                                dummyCategory.id
                                            ? AppColor.white
                                            : null,
                                      )),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 16),
            if (filteredProducts.isNotEmpty)
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: filteredProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final dummyProduct = filteredProducts[index];
                  return InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed(
                          AppRoutes.productDetails,
                          arguments: dummyProduct,
                        )
                        .then((value) => setState(
                              () {},
                            )),
                    child: ProductItem(
                      dummyProduct: dummyProduct,
                    ),
                  );
                },
              ),
            if (filteredProducts.isEmpty)
              const Center(child: Text('No Products Found!')),
          ],
        ),
      ),
    );
  }
}
