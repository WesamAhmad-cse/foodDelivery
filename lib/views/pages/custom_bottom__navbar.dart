import 'package:flutter/material.dart';
import 'package:fooddelivery_app/utils/app_colors.dart';
import 'package:fooddelivery_app/views/pages/favorites_page.dart';
import 'package:fooddelivery_app/views/pages/home_page.dart';
import 'package:fooddelivery_app/views/pages/profile_page.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomState();
}

class _CustomBottomState extends State<CustomBottomNavbar> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'Current Location',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: AppColor.grey,
                  ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on,
                  color: AppColor.green,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Jenin, Palestine',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            )
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: AppColor.bgColor,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: const <Widget>[
        HomePage(),
        FavoritesPage(),
        ProfilePage(),
      ][currentPageIndex],
      // currentPageIndex هون بمعنى انه الداتا الي حتنعرض من الليست حتكون بناءَ على ال
    );
  }
}
