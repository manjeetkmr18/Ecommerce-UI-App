import 'package:ecom_group_project/widgets/app_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../models/categories.dart';
import '../../models/products.dart';
import '../../widgets/category_card.dart';
import 'components/banner.dart';
import 'components/products_list.dart';

class HomePage extends StatefulWidget {
  static String routeName = "/home";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.pushNamed(context, '/home');
      }
      if (index == 1) {
        Navigator.pushNamed(context, '/products');
      }
      if (index == 2) {
        Navigator.pushNamed(context, '/cart');
      }
      if (index == 3) {
        Navigator.pushNamed(context, '/profile');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: const [
            Text('Electronics-Mart', style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
          ),
        ], // Add a cart icon to the app bar
        centerTitle: true,
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the app bar elevation
      ),
      bottomNavigationBar: AppBottomNavBar(
          onItemTapped: _onItemTapped, selectedIndex: _selectedIndex),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const BannerImage(
                imageUrl:
                    'https://upublisharticles.com/wp-content/uploads/2021/05/banner.jpg',
              ),
              // Add a Category list
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 160,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoriesList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CategoryCard(
                        category: categoriesList[index],
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Our Latest Products',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Latest Products
              SizedBox(
                height: 600,
                child: ProductsList(
                  products: demoProducts,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
