import 'package:flutter/material.dart';

import '../models/blog.dart';

class DetailScreen extends StatelessWidget {
  Blog blog;
  DetailScreen({super.key, required this.blog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text(
                blog.title,
                style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  SizedBox(width: 10),
                  Text('9 REVIEWS / 4.7 AVERAGE'),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                blog.desc,
                style: const TextStyle(fontSize: 18, color: Colors.black54, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 10),

              //Image.asset(blog.imagePath),
              blog.image,
              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       const SizedBox(height: 10),
              //       Text(
              //         blog.desc,
              //         style: const TextStyle(fontSize: 12),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
