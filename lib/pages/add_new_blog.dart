import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hw_10/models/blog.dart';
import 'package:image_picker/image_picker.dart';

class AddNewBlog extends StatefulWidget {
  const AddNewBlog({super.key});

  static List<Blog> newBlogs = blogs;

  @override
  State<AddNewBlog> createState() => _AddNewBlogState();
}

class _AddNewBlogState extends State<AddNewBlog> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  String defaultImage =
      'https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg';

  File? image;
  late String path;
  File? file;
  String? filename;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    final imageTemp = File(image.path);
    final path = base64Encode(await imageTemp.readAsBytes());

    //final String path = await getApplicationDocumentsDirectory().path;

    setState(() {
      this.image = imageTemp;
      //file = File(image.path);
      this.path = path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: Navigator.of(context).pop,
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF734060),
                    ),
                    onPressed: getImage,
                    child: const Text('Upload blog image'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            image != null
                ? Center(
                    child: Image.file(
                      image!,
                      height: 200,
                    ),
                  )
                : Center(
                    child: Image.network(
                      defaultImage,
                      height: 200,
                    ),
                  ),
            // Image.network(
            //   defaultImage,
            //   height: 200,
            // ),
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                label: Text('Enter Blog title'),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(
                label: Text('Enter Blog description'),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF734060),
                    ),
                    onPressed: () {
                      blogs.add(
                        Blog(
                          title: titleController.text,
                          desc: descriptionController.text,
                          date: "January 27, 2023",
                          image: image != null
                              ? Image.file(
                                  image!,
                                  height: 200,
                                )
                              : Image.network(defaultImage),
                        ),
                      );
                      Navigator.of(context).pop();
                    },
                    child: const Text('Add blog'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
