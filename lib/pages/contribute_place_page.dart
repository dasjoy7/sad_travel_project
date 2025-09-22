import 'package:flutter/material.dart';
import '../models/tourist_place.dart';

// Pending contributions list (temporary, replace with backend later)
List<TouristPlace> pendingContributions = [];

class ContributePlacePage extends StatefulWidget {
  @override
  _ContributePlacePageState createState() => _ContributePlacePageState();
}

class _ContributePlacePageState extends State<ContributePlacePage> {
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String description = '';
  String details = '';
  String category = '';
  String district = '';
  String imageUrl = '';

  List<String> categories = [
    'Historical', 'Nature', 'Beaches', 'Hills', 'Rivers', 'Museums'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contribute a Place'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Place Name'),
                validator: (value) => value!.isEmpty ? 'Enter a name' : null,
                onSaved: (value) => name = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Short Description'),
                maxLines: 2,
                validator: (value) => value!.isEmpty ? 'Enter description' : null,
                onSaved: (value) => description = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Details'),
                maxLines: 5,
                validator: (value) => value!.isEmpty ? 'Enter details' : null,
                onSaved: (value) => details = value!,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Category'),
                items: categories.map((c) => DropdownMenuItem(
                  value: c,
                  child: Text(c),
                )).toList(),
                validator: (value) => value == null ? 'Select a category' : null,
                onChanged: (value) => category = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'District'),
                validator: (value) => value!.isEmpty ? 'Enter district' : null,
                onSaved: (value) => district = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Image URL'),
                validator: (value) => value!.isEmpty ? 'Enter image URL' : null,
                onSaved: (value) => imageUrl = value!,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: _submitPlace,
                child: Text('Submit Place', style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitPlace() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final newPlace = TouristPlace(
        name: name,
        description: description,
        details: details,
        category: category,
        district: district,
        imageUrl: imageUrl,
      );

      // Add to pending list instead of main list
      pendingContributions.add(newPlace);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Your contribution has been submitted for review!')),
      );

      Navigator.pop(context);
    }
  }
}
