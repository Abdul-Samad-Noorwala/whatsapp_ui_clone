import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 26,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("images/img.png"),
            ),
            title: Text("Abdul Samad Noorwala"),
            subtitle: Text("Hey! I Am Using Whatsapp"),
            trailing: Text("12:45 PM"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF008069),
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
    );
  }
}
