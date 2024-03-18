import 'package:flutter/material.dart';
import 'package:fooddelivery_app/models/products.dart';
import 'package:fooddelivery_app/utils/app_colors.dart';
import 'package:fooddelivery_app/utils/app_routes.dart';
import 'package:fooddelivery_app/views/pages/product_details.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);
  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  // Adjusted constructor
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    debugPrint('FavoritesPage build()');

    if (favProducts.isEmpty) {
      return const Center(
        child: Text('No Favorite Products!'),
      );
    }

    return ListView.builder(
      itemCount: favProducts.length,
      itemBuilder: (context, index) {
        final dummyFavorite = favProducts[index];
        return Container(
          color: Theme.of(context).primaryColor.withOpacity(0.1),
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(
                    AppRoutes.productDetails,
                    arguments: favProducts[index],
                  )
                  .then((value) => setState(() {}));
            },
            leading: Image.network(
              dummyFavorite.imageUrl,
              height: 100,
              width: 70,
              fit: BoxFit.cover,
            ),
            title: Text(
              dummyFavorite.name,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ), // Removed const as TextStyle is mutable
            ),
            trailing: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  setState(() {
                    favProducts.remove(favProducts[index]);
                  });
                }),
          ),
        );
      },
    );
  }
}
