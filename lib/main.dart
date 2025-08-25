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
                        "https://randomuser.me/api/portraits/men/32.jpg"),
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
                  ),
                  SizedBox(width: 8),
                  ChoiceChip(label: Text("Nearby"), selected: false),
                  SizedBox(width: 8),
                  ChoiceChip(label: Text("Latest"), selected: false),
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
                          "data:image/jpeg;base64,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",
                      title: "Mount Fuji",
                      location: "Tokyo, Japan",
                      rating: 4.8,
                    ),
                    PlaceCard(
                      imageUrl:
                          "https://www.google.com/imgres?q=Andes&imgurl=https%3A%2F%2Fi.natgeofe.com%2Fn%2Ff4b5c5c5-5c5c-5c5c-5c5c-5c5c5c5c5c5c%2FAndes_4x3.jpg&imgrefurl=https%3A%2F%2Fwww.nationalgeographic.com%2Ftravel%2Farticle%2Fpaid-content-family-andes-trip&docid=tj8-fUlbF5PXiM&tbnid=IfoqFwIK0qbaQM&vet=12ahUKEwjlzrrX3qWPAxVcZWwGHQluLlkQM3oECB4QAA..i&w=3072&h=2304&hcb=2&ved=2ahUKEwjlzrrX3qWPAxVcZWwGHQluLlkQM3oECB4QAA",
                      title: "Andes",
                      location: "South America",
                      rating: 4.6,
                    ),
                    PlaceCard(
                      imageUrl:
                          "https://lp-cms-production.imgix.net/2024-04/LPT0115-001.jpg?auto=format,compress&q=72&w=768&h=810&fit=crop"
                      location: "Switzerland",
                      rating: 4.9,
                    ),
                    PlaceCard(
                      imageUrl:
                          "https://www.nps.gov/grca/planyourvisit/images/mather-point-2021.jpg?maxwidth=1300&maxheight=1300&autorotate=false&format=webp",
                      title: "Grand Canyon",
                      location: "Arizona, USA",
                      rating: 4.7,
                    ),
                    PlaceCard(
                      imageUrl:
                          "https://www.nationalgeographic.com/travel/world-heritage/article/taj-mahal",
                      title: 'Taj Mahal',
                      location: 'India',
                      rating: 4.5,
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
      height: 250,
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
