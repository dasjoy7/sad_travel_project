import 'package:flutter/material.dart';
import 'package:sad_travel_project/data/tourist_places_data.dart';
import 'package:sad_travel_project/models/tourist_place.dart';
import 'places_list_page.dart';
// import '../models/tourist_place.dart';
// import '../data/tourist_place_data.dart'; // contains allTouristPlaces

class AllJilasPage extends StatelessWidget {
  final List<String> jilas = [
    "Dhaka",
    "Chattogram",
    "Sylhet",
    "Khulna",
    "Rajshahi",
    "Barishal",
    "Rangpur",
    "Mymensingh",
    "Comilla",
    "Jessore",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Jilas"),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        itemCount: jilas.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 2,
        ),
        itemBuilder: (context, index) {
          final jila = jilas[index];
          return InkWell(
            onTap: () {
              // Filter allTouristPlaces by location
              final filteredPlaces = touristPlaces
                  .where((place) => place.district == jila)
                  .toList();

              // Navigate to PlacesListPage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PlacesListPage(title: jila, places: filteredPlaces),
                ),
              );
            },
            borderRadius: BorderRadius.circular(16),
            splashColor: Colors.green.withOpacity(0.3),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.green.shade200, Colors.green.shade400],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.4),
                    blurRadius: 6,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  jila,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
