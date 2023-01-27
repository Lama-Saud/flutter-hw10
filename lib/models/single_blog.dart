import 'package:flutter/material.dart';

import 'blog.dart';

class SingleBlog extends StatelessWidget {
  Blog blog;
  Function() press;

  SingleBlog({
    required this.blog,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          blog.image,
          //Image.asset(blog.imagePath),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blog.date,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  blog.title,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(
                  blog.desc,
                  style: const TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: press,
                  child: Text(
                    "continue reading".toUpperCase(),
                    style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
