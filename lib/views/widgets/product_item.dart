import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/products.dart';
import 'package:fooddelivery_app/utils/app_colors.dart';

class ProductItem extends StatefulWidget {
  //  final Product product;
  final Product dummyProduct;
  const ProductItem({
    super.key,
    required this.dummyProduct,
  });

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.network(
                    widget.dummyProduct.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  widget.dummyProduct.name,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  widget.dummyProduct.category.title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  '\$ ${widget.dummyProduct.price}',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 4,
            right: 4,
            child: InkWell(
              onTap: () {
                setState(() {
                  if (favProducts.contains(widget.dummyProduct)) {
                    favProducts.remove(widget.dummyProduct);
                  } else {
                    favProducts.add(widget.dummyProduct);
                  }
                });
              },
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    favProducts.contains(widget.dummyProduct)
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
