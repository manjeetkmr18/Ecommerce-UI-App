// ignore_for_file: library_private_types_in_public_api

import 'package:ecom_group_project/screens/products/product_details.dart';
import 'package:flutter/material.dart';
import '../../models/products.dart';
import '../../widgets/app_bottom_nav_bar.dart';
import '../../widgets/product_card.dart';

class ProductsScreen extends StatefulWidget {
  static const String routeName = '/products';
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  final TextEditingController _searchController = TextEditingController();

  List<Product> _searchedProducts = [];
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
           if (index == 0) {
        Navigator.pushNamed(context, '/home');
      }
      if (index == 1) {
        Navigator.pushNamed(context, '/products');
      }
      if(index == 2){
        Navigator.pushNamed(context, '/cart');
      }
      if (index == 3) {
        Navigator.pushNamed(context, '/profile');
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _searchedProducts = demoProducts;
  }

  void _searchProducts(String searchText) {
    if (searchText.isEmpty) {
      setState(() {
        _searchedProducts = demoProducts;
      });
      return;
    }

    List<Product> searchedProducts = [];

    for (var product in demoProducts) {
      if (product.name.toLowerCase().contains(searchText.toLowerCase()) ||
          product.category.toLowerCase().contains(searchText.toLowerCase())) {
        searchedProducts.add(product);
      }
    }

    setState(() {
      _searchedProducts = searchedProducts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Row(
          children: const [
            Text('Products', style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
          ),
        ], // Add a cart icon to the app bar
        centerTitle: false,
        backgroundColor: Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the app bar elevation
      ),
      bottomNavigationBar: AppBottomNavBar(
          onItemTapped: _onItemTapped, selectedIndex: _selectedIndex),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _searchController,
                onChanged: _searchProducts,
                decoration: InputDecoration(
                  hintText: "Search Products",
                  suffixIcon: IconButton(
                    onPressed: () {
                      _searchController.clear();
                      _searchProducts("");
                    },
                    icon: const Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.all(8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: _searchedProducts.length,
                  itemBuilder: (BuildContext ctx, index) {
                    final product = _searchedProducts[index];
                    return ProductCard(
                        product: product,
                        press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen(
                                  product: demoProducts[index],
                                ),
                                   settings: RouteSettings(
                                      arguments: 'product_${product.name}_image',
                                    ),
                              ),
                            ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
