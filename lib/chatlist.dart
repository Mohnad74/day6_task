import 'package:day6_task/chatCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  ChatList({super.key});
  List<Map<String, dynamic>> chats = [
    {
      'Name': 'Ankur',
      'image': 'assets/images/ankur.jpg',
      'message': 'Lets meet tomorrow',
      'Last online': '.3:09 PM',
      'isOnline': false
    },
    {
      'Name': 'Stella',
      'image': 'assets/images/stella.jpg',
      'message': 'Hey Whats up?',
      'Last online': '.Wed',
      'isOnline': true
    },
    {
      'Name': 'Rosy',
      'image': 'assets/images/rosy.jpg',
      'message': 'Are you ready for the party...',
      'Last online': '.Thu',
      'isOnline': true
    },
    {
      'Name': 'Ani',
      'image': 'assets/images/ani.jpg',
      'message': 'Lets go have some fun',
      'Last online': '.Wed',
      'isOnline': false
    },
    {
      'Name': 'John',
      'image': 'assets/images/john.jpg',
      'message': 'Are you in?',
      'Last online': '.7:17 AM',
      'isOnline': true
    },
    {
      'Name': 'Pope',
      'image': 'assets/images/pope.jpg',
      'message': 'I am in flutter Course',
      'Last online': '.Tue',
      'isOnline': false
    },
    {
      'Name': 'Sarah',
      'image': 'assets/images/sarah.jpeg',
      'message': 'Give me time',
      'Last online': '.Sun',
      'isOnline': true
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => ChatCard(
            name: chats[index]['Name'],
            image: chats[index]['image'],
            message: chats[index]['message'],
            last_online: chats[index]['Last online'],
            isonline: chats[index]['isOnline']),
        separatorBuilder: (context, index) => SizedBox(),
        itemCount: chats.length);
  }
}
