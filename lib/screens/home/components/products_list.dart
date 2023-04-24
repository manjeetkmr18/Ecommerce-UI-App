import 'package:flutter/material.dart';

import '../../../models/products.dart';
import '../../../widgets/product_card.dart';
import '../../products/product_details.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key, required List<Product> products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: demoProducts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) => ProductCard(
        product: demoProducts[index],
        press: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(
              product: demoProducts[index],
            ),
            settings: RouteSettings(
              arguments: 'product_${demoProducts[index].name}_image',
            ),
          ),
        ),
      ),
    );
  }
}
