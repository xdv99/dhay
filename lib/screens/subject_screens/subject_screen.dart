import 'package:flutter/material.dart';
import '../../models/default_colors.dart';
import '../../widgets/avatar_widget.dart';
import '../../widgets/subject_widgets/category_bubble.dart';
import 'subject_book.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 5),
            child: AvatarWidget(imageLink: "assets/images/avatar.png"),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          children: [
            // Title
            const Text(
              "Programming",
              style: TextStyle(
                  fontFamily: "Poppins",
                  color: regularPurple,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            // Search Field
            TextField(
              decoration: InputDecoration(
                  hintText: "Search resources ...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[400],
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(15))),
            ),
            const SizedBox(height: 20),
            // Categories
            SizedBox(
              height: 40,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryBubble(title: "Books", isSelected: true),
                  SizedBox(width: 10),
                  CategoryBubble(title: "Videos"),
                  SizedBox(width: 10),
                  CategoryBubble(title: "Meets"),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Books
            const SubjectBookWidget(
                title: "The C++ Programming Language",
                author: "By: Bjarne Stroustrup",
                color: pink),
            const SizedBox(height: 20),
            const SubjectBookWidget(
                title: "The C++ Programming Language",
                author: "By: Bjarne Stroustrup",
                color: lightGreen),
            const SizedBox(height: 20),
            const SubjectBookWidget(
                title: "The C++ Programming Language",
                author: "By: Bjarne Stroustrup",
                color: lightPurple),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
