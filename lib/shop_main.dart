import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> productImages = [
    'assets/appimages/nama1.jpg',
    'assets/appimages/ababil2.jpg',
    'assets/appimages/arif3.jpg',
  ];

  final List<String> productNames = [
    'T-Shirt',
    'Hat',
    'Knitwear',
  ];

  final List<double> productPrices = [
    190.099,
    90.990,
    289.990,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Web Shop'),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Add your shopping cart functionality here
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Store INDENTATION !',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    productImages.length,
                    (index) => Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            productImages[index],
                            width: 200,
                            height: 200,
                          ),
                          SizedBox(height: 10),
                          Text(
                            productNames[index],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '\Rp.${productPrices[index]}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Add your button functionality here
                            },
                            child: Text('Buy Now'),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              // Add your button functionality here
                            },
                            child: Text('Add to Cart'),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}