import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Checkout'),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Store Information
            Text('Guluna Clothing', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text('123 Fashion Street, Block A,'),
            Text('Lahore, Pakistan 54000'),
            Text('+92-XXX-XXXXXXX'),
            SizedBox(height: 16),

            // Office Information
            Text('Office', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text('Guluna Clothing'),
            Text('123 Fashion Street, Block A,'),
            Text('Lahore, Pakistan 54000'),
            Text('+92-XXX-XXXXXXX'),
            SizedBox(height: 16),

            // Payment Method
            Text('Payment Method', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank, size: 18),
                SizedBox(width: 8),
                Text('Cash on Delivery'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank, size: 18),
                SizedBox(width: 8),
                Text('EasyPaisa'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank, size: 18),
                SizedBox(width: 8),
                Text('Paypal'),
              ],
            ),
            SizedBox(height: 16),

            // Total
            Text('Total', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Rs 20,000', style: TextStyle(fontSize: 20, color: Colors.black)),
            Spacer(),

            // Place Order Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Place Order', style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
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
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.red, size: 30), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
