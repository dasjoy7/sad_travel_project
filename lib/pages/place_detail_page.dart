import 'package:flutter/material.dart';
import '../models/tourist_place.dart';

class PlaceDetailPage extends StatelessWidget {
  final TouristPlace place;

  PlaceDetailPage({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(place.imageUrl, fit: BoxFit.cover, width: double.infinity),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(place.name,
                      style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(place.details,
                      style: TextStyle(fontSize: 16, color: Colors.black87)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
