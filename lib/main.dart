import 'package:day6_task/chatlist.dart';
import 'package:day6_task/storylist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(FirstScreen());
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First app',
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          leading: Padding(
            padding: const EdgeInsets.all(6.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/pic1.jpeg'),
            ),
          ),
          title: Text(
            'Chats',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.camera_alt,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(width: 16),
            Icon(
              Icons.edit,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(width: 16),
          ],
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.grey[190],
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 25.0, horizontal: 12.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 18),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 28,
                  ),
                  fillColor: Colors.grey[350],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
              child: storyList(),
            ),
            Expanded(
              child: ChatList(),
            )
          ],
        ),
      ),
    );
  }
}
