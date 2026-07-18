import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  final String productCode;

  Product({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.productCode,
  });
}

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(
        name: 'dffbgf',
        productCode: 'PRD-20260717-3FD1E6',
        description: 'vsnjsndjsb',
        price: 22.0,
        imageUrl: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
      ),
      Product(
        name: 'airpods',
        productCode: 'PRD-20260717-4F2DFE',
        description: 'vsnjsndjsb',
        price: 55.0,
        imageUrl:
            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e',
      ),
      Product(
        name: 'Aviator Sunglasses',
        productCode: 'PRD-20260718-1F44DD',
        description: 'Classic aviator sunglasses with UV protection',
        price: 1200.0,
        imageUrl:
            'https://images.unsplash.com/photo-1511499767150-a48a237f0083',
      ),
    ];

    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Our Products',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isDarkMode ? const Color(0xff1e1e1e) : Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                if (!isDarkMode)
                  BoxShadow(
                    color: Colors.grey.withValues(alpha: 0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    product.imageUrl,
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 90,
                      height: 90,
                      color: Colors.grey[800],
                      child: const Icon(Icons.image, color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Code: ${product.productCode}',
                        style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        product.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 13, color: Colors.grey[400]),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '\$${product.price}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
