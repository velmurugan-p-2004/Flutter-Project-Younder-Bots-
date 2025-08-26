import 'package:flutter/material.dart';
import 'main.dart';
void main() {
  runApp(FashionApp());
}

class FashionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FashionHomePage(),
    );
  }
}

class FashionHomePage extends StatelessWidget {
  final List<String> categories = ["Women", "Men", "Accessories", "Beauty"];

  final List<Map<String, dynamic>> products = [
    {
      "name": "Knit Sweater",
      "price": 45.00,
      "image":
          "https://images.unsplash.com/photo-1602810318383-e6e7d2a99a9f?w=500"
    },
    {
      "name": "Long Sleeve Dress",
      "price": 45.00,
      "image":
          "https://images.unsplash.com/photo-1542060748-10c28b62716c?w=500"
    },
    {
      "name": "Sportwear Set",
      "price": 80.00,
      "image":
          "https://images.unsplash.com/photo-1512436991641-6745cdb1723f?w=500"
    },
    {
      "name": "Jacket Coat",
      "price": 120.00,
      "image":
          "https://images.unsplash.com/photo-1542060748-10c28b62716c?w=500"
    },
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Text("Gemstore",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications_outlined, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Categories
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: categories.map((cat) {
                  return Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: cat == "Women"
                            ? Colors.black
                            : Colors.grey.shade200,
                        child: Icon(Icons.category,
                            color: cat == "Women"
                                ? Colors.white
                                : Colors.black),
                      ),
                      SizedBox(height: 6),
                      Text(cat,
                          style: TextStyle(
                              fontWeight: cat == "Women"
                                  ? FontWeight.bold
                                  : FontWeight.normal)),
                    ],
                  );
                  
                }).toList(),
              ),
            ),

            // Banner
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    Image.network(
                      "https://images.unsplash.com/photo-1593032465171-8a4c94f1a5e4?w=1000",
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      height: 180,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 20,
                      child: Text(
                        "Autumn Collection\n2022",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Featured Products
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Featured Products",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("Show all",
                      style: TextStyle(color: Colors.blue, fontSize: 14)),
                ],
              ),
            ),
            SizedBox(height: 10),

            // Product Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 0.65),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 6,
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(16)),
                          child: Image.network(
                            product["image"],
                            height: 160,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(product["name"],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                              SizedBox(height: 4),
                              Text("\$${product["price"]}",
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 14)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
