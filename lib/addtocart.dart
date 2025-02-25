import 'package:flutter/material.dart';

class addtocart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back Button and Profile Picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/AQIB SHAH.jpg"),
                    radius: 20,
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                // Image with Gradient Overlay
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/rb m2.png'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                    gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.5), Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                // Description Overlay
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildFeatureRow(Icons.fiber_manual_record, Colors.green, 'Fabric: Premium Silk'),
                        _buildFeatureRow(Icons.fiber_manual_record, Colors.yellow, 'Color: Red & Black'),
                        _buildFeatureRow(Icons.fiber_manual_record, Colors.orange, 'Occasion: Festive, Wedding, Party'),
                        _buildFeatureRow(Icons.fiber_manual_record, Colors.blue, 'Features: Soft Texture, Traditional Weaving'),
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
                  Text('Rs 20,000', style: TextStyle(fontSize: 20, color: Colors.black)),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildImageWithBorder('assets/m3 r.png'), // Replace with your image paths
                      _buildImageWithBorder('assets/m4 r.png'),
                      _buildImageWithBorder('assets/rb m2.png'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Column(
                      children: [
                        _buildActionButton(context, 'Add To Cart', height: 50, width: 200),
                        SizedBox(height: 8),
                        _buildActionButton(context, 'Buy It Now', height: 50, width: 200),
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
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
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

  Widget _buildFeatureRow(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(icon, color: color, size: 10),
        SizedBox(width: 5),
        Text(text, style: TextStyle(color: Colors.black, fontSize: 12)),
      ],
    );
  }

  Widget _buildActionButton(BuildContext context, String text, {double height = 60, double width = 350}) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }

  Widget _buildImageWithBorder(String imagePath) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
