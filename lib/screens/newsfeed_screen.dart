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
        NewsfeedCard(
          userName: 'Tokyo Athena',
          postContent: 'I feel so kawaii today !',
          date: '1 day ago',
          numOfLikes: 123,
          hasImage: true,
          profileImage: 'assets/images/taro.jpg',
          postImage: 'assets/images/tokyo.jpg',
        ),
        NewsfeedCard(
          userName: 'Tralalelo Tralala',
          postContent: 'REJECT PAX SILICA',
          date: '4 days ago',
          numOfLikes: 100,
          hasImage: true,
          profileImage: 'assets/images/tralalelo.jpg',
          postImage: 'assets/images/silica.jpg',
        ),
        NewsfeedCard(
          userName: 'Vice Ganda',
          postContent: 'Kain mga ka team rizza',
          date: '1 week ago',
          numOfLikes: 5000,
          hasImage: true,
          profileImage: 'assets/images/vice.jpg',
          postImage: 'assets/images/kain.jpg',
        ),
        NewsfeedCard(
          userName: 'Jhong Hilario',
          postContent: 'I am Jhong Hilario, Hello Madlang People !! ',
          date: '2 weeks ago',
          numOfLikes: 1000,
          hasImage: true,
          profileImage: 'assets/images/jhong.jpg',
          postImage: 'assets/images/picture.jpg',
        ),
        NewsfeedCard(
          userName: 'Berta Manaloto',
          postContent: 'tHanK U pOh iDoL rAfFy tULfO,,,, gOd bLeSs pOh sA iNyO aT sA pAmILyA nYo,,,, mAbUhAy pOh kAyO',
          date: '3 weeks ago',
          numOfLikes: 10000,
          hasImage: true,
          profileImage: 'assets/images/nanay.jpg',
          postImage: 'assets/images/tulfhone.jpg',
        ),
        NewsfeedCard(
          userName: 'Eugene Domingo',
          postContent: 'Ang sarap ng hatdog',
          date: '4 weeks ago',
          numOfLikes: 8080,
          hasImage: true,
          profileImage: 'assets/images/eugene.jpg',
          postImage: 'assets/images/hatdog.jpg',
        ),
        NewsfeedCard(
          userName: 'Papa Dudut',
          postContent: 'Cnu d2 G0sto m4gk4 Juwa',
          date: '1 month ago',
          numOfLikes: 500,
          hasImage: true,
          profileImage: 'assets/images/tatay.jpg',
          postImage: 'assets/images/pfp.jpg',
        ),
        NewsfeedCard(
          userName: 'William Shakespeare',
          postContent: 'Be with me forever',
          date: '2 months ago',
          numOfLikes: 1000000,
          hasImage: true,
          profileImage: 'assets/images/white.jpg',
          postImage: 'assets/images/white.jpg',
        ),
      ],
    );
  }
  
}