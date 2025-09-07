import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({this.username = "Guest"});

  // List of Bangladesh districts (Jilas)
  final List<String> jilas = [
    "Dhaka", "Chattogram", "Sylhet", "Khulna", "Rajshahi",
    "Barishal", "Rangpur", "Mymensingh", "Comilla", "Jessore",
    "Bogra", "Cox's Bazar", "Pabna", "Tangail", "Dinajpur",
    // add more as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello, $username',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Welcome to Discover BD!',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        toolbarHeight: 80,
        title: Row(
          children: [
            Image.asset(
              'assets/images/logo.jpg',
              height: 50,
              width: 50,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover BD',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Explore Bangladesh',
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Explore Categories
            Text(
              'Explore Categories',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800]),
            ),
            SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                optionBlock('Historical', Icons.account_balance),
                optionBlock('Nature', Icons.park),
                optionBlock('Beaches', Icons.beach_access),
                optionBlock('Hills', Icons.terrain),
                optionBlock('Rivers', Icons.water),
                optionBlock('Museums', Icons.museum),
              ],
            ),
            SizedBox(height: 30),

            // 2. Choose Your Destination
            Text(
              'Choose Your Destination',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800]),
            ),
            SizedBox(height: 16),
            GridView.builder(
              itemCount: jilas.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 2),
              itemBuilder: (context, index) {
                return destinationCard(jilas[index]);
              },
            ),
            SizedBox(height: 30),

            // 3. Other Sections (Blogs, Videos, Food, Festivals)
            Text(
              'Popular Sections',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[800]),
            ),
            SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                optionBlock('Travel Blogs', Icons.book),
                optionBlock('Travel Videos', Icons.video_collection),
                optionBlock('Food & Cuisine', Icons.restaurant),
                optionBlock('Festivals & Events', Icons.event),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Reusable category block
  Widget optionBlock(String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.green[800]),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green[800]),
            ),
          ],
        ),
      ),
    );
  }

  // Destination Card
  Widget destinationCard(String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green.shade200),
      ),
      child: InkWell(
        onTap: () {
          // TODO: Navigate to district details
        },
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green[900]),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
