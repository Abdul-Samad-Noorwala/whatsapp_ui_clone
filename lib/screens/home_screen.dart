import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screens/call_screen.dart';
import 'package:whatsapp_ui_clone/screens/chat_screen.dart';
import 'package:whatsapp_ui_clone/screens/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF008069),
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 1,
            ),
          ),
          elevation: 1,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorWeight: 3,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            splashFactory: NoSplash.splashFactory,
            tabs: [
              Tab(
                text: ('Chat'),
              ),
              Tab(
                text: ('Status'),
              ),
              Tab(
                text: ('Calls'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
      ),
    );
  }
}
