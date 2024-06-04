import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../avatar_widget.dart';

class PostWidget extends StatelessWidget {
  const PostWidget(
      {super.key,
      required this.avatarLink,
      required this.name,
      required this.dateTime,
      required this.content,
      required this.likes});

  final String avatarLink;
  final String name;
  final DateTime dateTime;
  final String content;
  final int likes;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 1), color: Colors.grey, blurRadius: 2)
              ]),
          child: Column(
            children: [
              // User Data
              Row(
                children: [
                  AvatarWidget(imageLink: avatarLink),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // User Name
                      Text(name,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      // Post Date & Time
                      Text(
                        DateFormat("MMMM dd, yyyy hh:mm a").format(dateTime),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 15),
              // Post Content
              Text(content, style: const TextStyle(fontFamily: "Poppins")),
              const SizedBox(height: 10),
              // Likes & Replies
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.thumb_up_outlined,
                        color: Colors.black54,
                      ),
                      label: Text(likes.toString(),
                          style: const TextStyle(
                            color: Colors.black54,
                          ))),
                  TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.reply,
                        color: Colors.black54,
                      ),
                      label: const Text(
                        "Reply",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
        // Options Icon
        const Positioned(
            top: 10, right: 10, child: Icon(Icons.more_vert_rounded))
      ],
    );
  }
}
