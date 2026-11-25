import 'package:flutter/material.dart';
import 'package:surname_mobprog/widgets/newsfeed_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Kluwi Valdiz',
          postContent: 'Bili na kayu balut sa akin, mga kababayan',
          date: '2 hours ago',
          numOfLikes: 67,
          hasImage: true,
          profileImage: 'assets/images/kluwi.jpg',
          postImage: 'assets/images/balut.jpg',
        ),
        NewsfeedCard(
          userName: 'Makati Fukiko',
          postContent:
              'I am makati Fukiko, from tokyo japan. And I love warm hugs !',
          date: 'November 21, 2026',
          numOfLikes: 6969,
          hasImage: true,
          profileImage: 'assets/images/fukiko.jpg',
          postImage: 'assets/images/post.jpg',
        ),
      ],
    );
  }
}