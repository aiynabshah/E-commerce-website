import 'package:flutter/material.dart';

class addtocart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/m2.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 400,
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 10,
                  child: IconButton(
                    icon: Icon(Icons.favorite_border, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Fabric: Premium Silk', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Color: Red & Black'),
                        Text('Occasion: Festive, Wedding, Party'),
                        Text('Features: Soft Texture, Traditional Weaving'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Red & Black Silk', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Rs 20,000', style: TextStyle(fontSize: 20, color: Colors.red)),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/m3.jpg', width: 80, height: 80, fit: BoxFit.cover),
                      Image.asset('assets/m4.jpg', width: 80, height: 80, fit: BoxFit.cover),
                      Image.asset('assets/m5.jpg', width: 80, height: 80, fit: BoxFit.cover),
                    ],
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Add To Cart'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Buy It Now'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, size: 30), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
