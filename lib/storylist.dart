import 'package:day6_task/storyCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class storyList extends StatelessWidget {
  storyList({super.key});
  List<Map<String, dynamic>> chats = [
    {'Name': 'Your Story', 'image': ' ', 'isOnline': false},
    {'Name': 'Ankur', 'image': 'assets/images/ankur.jpg', 'isOnline': false},
    {'Name': 'Stella', 'image': 'assets/images/stella.jpg', 'isOnline': true},
    {'Name': 'Rosy', 'image': 'assets/images/rosy.jpg', 'isOnline': true},
    {'Name': 'Ani', 'image': 'assets/images/ani.jpg', 'isOnline': false},
    {'Name': 'John', 'image': 'assets/images/john.jpg', 'isOnline': true},
    {'Name': 'Pope', 'image': 'assets/images/pope.jpg', 'isOnline': false},
    {'Name': 'Sarah', 'image': 'assets/images/sarah.jpeg', 'isOnline': true},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => storyCard(
            name: chats[index]['Name'],
            image: chats[index]['image'],
            isonline: chats[index]['isOnline']),
        separatorBuilder: (context, index) => SizedBox(),
        scrollDirection: Axis.horizontal,
        itemCount: chats.length);
  }
}
