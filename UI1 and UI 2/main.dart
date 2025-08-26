import 'package:flutter/material.dart';
import 'fashion_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TravelHomePage(),
    );
  }
}

class TravelHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Hi, Younder Bots 👋",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text("Explore the world",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://stock.adobe.com/in/search/images?k=handsome+man+profile&asset_id=1456125806"),
                    radius: 25,
                  )
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FashionHomePage()),
                  );
                },
                child: Text('Go to Fashion Home Page'),
              ),
              const SizedBox(height: 20),

              // Search Bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search places",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.tune),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Popular places
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Popular places",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("View all",
                      style: TextStyle(color: Colors.blue, fontSize: 14)),
                ],
              ),
              const SizedBox(height: 16),

              // Tabs
              Row(
                children: [
                  ChoiceChip(
                    label: Text("Most Viewed"),
                    selected: true,
                    onSelected: (selected) {},
                  ),
                  SizedBox(width: 8),
                  ChoiceChip(label: Text("Nearby"),selected: false, onSelected: (selected) {}),
                  SizedBox(width: 8),
                  ChoiceChip(label: Text("Latest"),selected: false, onSelected: (selected) {}),
                ],
              ),
              const SizedBox(height: 10),

              // Places List
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    PlaceCard(
                      imageUrl:
                          "https://images.unsplash.com/photo-1610375229632-c7158c35a537?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      title: "Mount Fuji",
                      location: "Tokyo, Japan",
                      rating: 4.8,
                    ),
                    PlaceCard(
                      imageUrl:
                          "https://media.istockphoto.com/id/586199062/photo/mountainous-jungle-landscape-near-machu-picchu-in-peru.webp?a=1&b=1&s=612x612&w=0&k=20&c=gj6Meq2-lHDCnMvN0i_eQDGxOwjtCH6vA7G0cCXDnwg=",
                      title: "Andes",
                      location: "South America",
                      rating: 4.6,
                    ),
                    PlaceCard(
                      imageUrl:
                          "https://lp-cms-production.imgix.net/2024-04/LPT0115-001.jpg?auto=format,compress&q=72&w=768&h=810&fit=crop",
                      title: "Swiss Alps",
                      location: "Switzerland",
                      rating: 4.9,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String imageUrl, title, location;
  final double rating;

  const PlaceCard({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Text(location,
                      style: const TextStyle(color: Colors.white70)),
                  Row(
                    children: [
                      const Icon(Icons.star,
                          color: Colors.yellow, size: 16),
                      Text(rating.toString(),
                          style: const TextStyle(color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
