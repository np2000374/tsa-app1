// screens/showcase.dart
import 'package:flutter/material.dart';

class ShowcaseScreen extends StatelessWidget {
  const ShowcaseScreen({super.key});

  Widget puppyImage(String url) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Image.network(url, width: 100, height: 100, fit: BoxFit.cover),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> puppyUrls = [
      'https://placedog.net/640/482?random',
      'https://placedog.net/640/481?random',
      'https://placedog.net/640/480?r',
      'https://placedog.net/503?r',
      'https://placedog.net/504?r',
      'https://placedog.net/505?r',
    ];

    return Scaffold(
      body: Column(
 mainAxisAlignment: MainAxisAlignment.start,
        children: [
 Padding(
 padding: const EdgeInsets.only(left: 100.0),
 child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text.rich(
              TextSpan(
                text: "HERE'S A SHOWCASE\nOF ",
                style: TextStyle(color: Colors.white),
                children: [
                  TextSpan(
                    text: 'Dogs',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Wrap(alignment: WrapAlignment.center, children: puppyUrls.map((url) => puppyImage(url)).toList()),
          ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/alt'),
          child: const Text('Alternate Design'),
        ),
        ],
         ),
          ),
        ],
      ),
    );
  }
}
