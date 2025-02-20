import 'package:flutter/material.dart';
import 'addtocart.dart'; // Import the AddToCartScreen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/AQIB SHAH.jpg"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Text
              const Text(
                "Welcome to Gulluna!",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              const Text(
                "Where Tradition Meets Style!",
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 15),

              // Search Bar changes done
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Search"),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Banner Section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Image.asset("assets/banner.png", height: 80), // Replace with banner image
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Super Sale",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "Discount 40%",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 5),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Get Now", style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Categories
              const Text(
                "Categories",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),

              // Scrollable Categories
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCategory("Scarfs", "assets/girl.jpeg"),
                    const SizedBox(width: 24),
                    _buildCategory("Winters", "assets/image7.png"),
                    const SizedBox(width: 24),
                    _buildCategory("Shawls", "assets/model 2.jpg"),
                    const SizedBox(width: 24),
                    _buildCategory("Summers", "assets/woolen scarfs.png"),
                    const SizedBox(width: 24),
                    _buildCategory("Unstitch", "assets/scarf.png"),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // View All Button
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("View all"),
                ),
              ),
              const SizedBox(height: 20),

              // Featured Products
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => addtocart()),
                      );
                    },
                    child: _buildProductCard("assets/m2.jpeg"),
                  ),
                  const SizedBox(width: 10),
                  _buildProductCardWithMenu("assets/image7.png"),
                ],
              ),
            ],
          ),
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }

  Widget _buildCategory(String name, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 5),
        Text(name, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildProductCard(String imagePath) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 5, spreadRadius: 1),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }

  Widget _buildProductCardWithMenu(String imagePath) {
    return Stack(
      children: [
        _buildProductCard(imagePath),
        Positioned(
          top: 10,
          right: 10,
          child: PopupMenuButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'option1',
                child: Text('add to cart'),
              ),
              const PopupMenuItem(
                value: 'option2',
                child: Text('buy it now'),
              ),
            ],
            onSelected: (value) {
              // Handle menu item selection
            },
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {
              // Handle wishlist button press
            },
          ),
        ),
      ],
    );
  }
}
