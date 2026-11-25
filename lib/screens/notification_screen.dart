import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surname_mobprog/widgets/notification_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: SingleChildScrollView(
        child: Column(
          children: [
            NotificationWidget(
              name: 'Coco Marlo',
              post: 'Sample Post',
              description: 'Sample description',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Gina Cole',
              post: 'Reacted Angry to your post',
              description: 'Just now',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Tina Moran',
              post: 'Commented: "Sana all!"',
              description: '5 mins ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Benny Benta',
              post: 'Tagged you in a Marketplace post',
              description: '12 mins ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Lucy Pera',
              post: 'Sent you a message: "Pautang muna"',
              description: '25 mins ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Dina Tulog',
              post: 'Liked your post at 3:00 AM',
              description: '40 mins ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Sam Pinto',
              post: 'Poked you',
              description: '1 hour ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Mayumi Bango',
              post: 'Reacted Heart to your MyDay',
              description: '2 hours ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Boy Bawang',
              post: 'Invited you to play Mobile Legends',
              description: '3 hours ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Kiko MatSing',
              post: 'Shared your meme',
              description: '4 hours ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Aling Nena',
              post: 'Posted: "May ice tubig na ulit!"',
              description: '5 hours ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Tito Boy',
              post: 'Asked: "Six or Chocolates?" in comments',
              description: '6 hours ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Peping WalangPera',
              post: 'Liked your profile picture',
              description: '7 hours ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Bebang Kulot',
              post: 'Mentioned you in a comment',
              description: '8 hours ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Cardo Dalisay',
              post: 'Is still alive and liked your post',
              description: '10 hours ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Marites Chismosa',
              post: 'Viewed your profile 15 times',
              description: '12 hours ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Jollibee Bida',
              post: 'Invited you to a birthday party',
              description: '1 day ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'JunJun Pasaway',
              post: 'Reacted Haha to your comment',
              description: '1 day ago',
            ),   
            const Divider(),
            NotificationWidget(
              name: 'Nene Tambay',
              post: 'Tagged you in a "Shot puno" photo',
              description: '2 days ago',
            ),
            const Divider(),
            NotificationWidget(
              name: 'Idol Raffy',
              post: 'Commented: "Ipapa-Tulfo natin yan!"',
              description: '4 days ago',
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}