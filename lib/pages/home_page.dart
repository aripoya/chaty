import 'package:chatty/theme.dart';
import 'package:flutter/material.dart';
import 'package:chatty/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sabrina Carpenter',
                style: TextStyle(fontSize: 20, color: whiteColor),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Travel Freelancer',
                style: TextStyle(fontSize: 16, color: lightBlueColor),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: titleTextStyle,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/friend1.png',
                      name: 'Joshuer',
                      text: 'Sorry, you’re not my ty...',
                      waktu: 'Now',
                      unread: true,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/friend2.png',
                      name: 'Gabriella',
                      text: 'I saw it clearly and mig...',
                      waktu: '2:30',
                      unread: false,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Groups',
                      style: titleTextStyle,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/grup1.png',
                      name: 'Jakarta Fair',
                      text: 'Why does everyone ca...',
                      waktu: '11:11',
                      unread: false,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/grup2.png',
                      name: 'Angga',
                      text: 'Here here we can go...',
                      waktu: '7:11',
                      unread: true,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/grup3.png',
                      name: 'Bentley',
                      text: 'The car which does not...',
                      waktu: '7:11',
                      unread: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
