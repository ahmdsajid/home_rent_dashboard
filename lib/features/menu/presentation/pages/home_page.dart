import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Location + Search
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButton<String>(
                  value: "Jakarta",
                  items: ["Jakarta", "Bandung", "Bali"]
                      .map((city) => DropdownMenuItem(
                            value: city,
                            child: Text(city),
                          ))
                      .toList(),
                  onChanged: (value) {},
                ),
                Icon(Icons.search, color: Colors.grey[700]),
              ],
            ),
            const SizedBox(height: 16),

            // Tabs
            const Row(
              children: [
                ChoiceChip(label: Text("House"), selected: true),
                SizedBox(width: 8),
                ChoiceChip(label: Text("Apartment"), selected: false),
              ],
            ),
            const SizedBox(height: 16),

            // Near from you
            const Text("Near from you",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1560448075-bb9b5d3c4f52"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Best for you
            const Text("Best for you",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ListTile(
              leading: Image.network(
                "https://images.unsplash.com/photo-1570129477492-45c003edd2be",
                width: 60,
                fit: BoxFit.cover,
              ),
              title: const Text("Orchard House"),
              subtitle: const Text("Rp. 2,500 / month • 6 Bed • 3 Bath"),
            ),
            ListTile(
              leading: Image.network(
                "https://images.unsplash.com/photo-1599423300746-b62533397364",
                width: 60,
                fit: BoxFit.cover,
              ),
              title: const Text("The Hollies House"),
              subtitle: const Text("Rp. 2,000 / month • 5 Bed • 2 Bath"),
            ),
          ],
        ),
      ),
    );
  }
}
