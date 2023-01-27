import 'package:flutter/material.dart';

class Blog {
  String title;
  String desc;
  // String component;
  String date;
  Image image;

  Blog({
    // required this.component,
    required this.title,
    required this.desc,
    required this.date,
    required this.image,
  });
}

List<Blog> blogs = [
  Blog(
    title: '7-Layer Beet Salad',
    desc:
        'This 7-Layer Beet Salad is a stunner! Studded with cooked beets, supremed oranges, chopped pistachios, creamy truffle ricotta, and a bit of fresh mint. So fresh, so good! ',
    date: 'December 5, 2022',
    image: Image.asset('lib/assets/meal1.png'),
    // component:
    // '1- Golden brown chicken./n2- meatballs cozied up next to fixings like./n3- cucumbers, shallots, kewpie mayo, mint, a bit of chili crisp, and some fresh cilantro to make the ultimate chicken sando!',
  ),
  Blog(
    title: 'Ginger Chicken Meatball Sandos',
    desc:
        'Golden brown chicken meatballs cozied up next to fixings like cucumbers, shallots, kewpie mayo, mint, a bit of chili crisp, and some fresh cilantro to make the ultimate chicken sando!',
    date: 'December 5, 2022',
    image: Image.asset('lib/assets/meal2.png'),
    // component:
    //     '1- Golden brown chicken./n2- meatballs cozied up next to fixings like./n3- cucumbers, shallots, kewpie mayo, mint, a bit of chili crisp, and some fresh cilantro to make the ultimate chicken sando!',
  ),
  Blog(
    title: 'Cream Cheese Danishes',
    desc:
        'Golden brown chicken meatballs cozied up next to fixings like cucumbers, shallots, kewpie mayo, mint, a bit of chili crisp, and some fresh cilantro to make the ultimate chicken sando!',
    date: 'December 5, 2022',
    image: Image.asset('lib/assets/meal3.png'),
    // component:
    //     '1- Golden brown chicken./n2- meatballs cozied up next to fixings like./n3- cucumbers, shallots, kewpie mayo, mint, a bit of chili crisp, and some fresh cilantro to make the ultimate chicken sando!',
  ),
];
