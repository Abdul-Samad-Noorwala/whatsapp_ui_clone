import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF008069),
        child: const Icon(
          Icons.add_ic_call,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('images/img.png'),
            ),
            title: Text('Abdul Samad Noorwala'),
            subtitle: Text('Share a link for your whatsapp call'),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Recent'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 25,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('images/img.png'),
                  ),
                  title: Text('Abdul Samad Noorwala'),
                  subtitle: Text('Yesterday, 12:00 AM'),
                  trailing: Icon(
                    Icons.call,
                    color: Color(0xFF008069),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
