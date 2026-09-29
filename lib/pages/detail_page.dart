import 'package:flutter/material.dart';
import 'package:kuis_mobile_124240042/models/car.dart';

class CarDetailPage extends StatelessWidget {
  final Car car;

  const CarDetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("${car.brand} ${car.name}"),
          backgroundColor: Colors.grey[800],
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              car.imageUrl,
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              "${car.brand} ${car.name}",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text("${car.year}"),
            const SizedBox(height: 20),
            Text("Rp${car.price}"),
            const SizedBox(height: 20),
            Text(car.description),
          ],
        ),
      ),
    );
  }
}
