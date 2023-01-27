import 'package:flutter/material.dart';
import 'package:hw_10/pages/add_new_blog.dart';
import 'package:hw_10/pages/detail_screen.dart';

import '../models/blog.dart';
import '../models/single_blog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  //static List<Blog> blogs = blogs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Image.asset(
            'lib/assets/blog_logo.png',
            width: 200,
          ),
        ),
        actions: [
          InkWell(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddNewBlog()),
            ),
            child: const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.menu,
                size: 40,
                color: Colors.black,
              ),
            ),
          ),
          // InkWell(
          //   onTap: () => Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => const AddNewBlog()),
          //   ),
          //   child: const Icon(
          //     Icons.add_box,
          //     size: 40,
          //     color: Colors.black,
          //   ),
          // ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Pinch of Yum Blog',
                style: TextStyle(color: Color(0xFF734060), fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Here\'s where you can find all the latest and greatest from the recipes, tips and tricks, personal updates, and more. Be sure to sign up for email updates to receive all our new posts, right in your inbox.',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.black54),
              ),

              const SizedBox(height: 16),
              SizedBox(
                height: 600,
                child: ListView.builder(
                  itemBuilder: (context, index) => SingleBlog(
                    blog: blogs[index],
                    press: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          blog: blogs[index],
                        ),
                      ),
                    ),
                  ),
                  itemCount: blogs.length,
                ),
              ),
              //const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
