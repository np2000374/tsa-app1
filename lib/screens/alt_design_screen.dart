// screens/alt_design.dart
import 'package:flutter/material.dart';
import 'package:myapp/InfoCard.dart';

class AltDesignScreen extends StatelessWidget {
  const AltDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> dogInfo = [
      {
        "image": "https://placedog.net/550",
        "text": "This is Luna, a cheerful retriever who loves playing fetch.",
      },
      {
        "image": "https://placedog.net/551",
        "text": "Max is a clever shepherd known for solving puzzles.",
      },
      {
        "image": "https://placedog.net/552",
        "text": "Bella is a calm and loyal companion who enjoys long naps.",
      },
    ];

    return Scaffold(
      body: ListView(
        children: dogInfo
            .map((dog) => InfoCard(
                  imageUrl: dog['image']!,
                  description: dog['text']!,
                ))
            .toList(),
      ),
    );
  }
}
