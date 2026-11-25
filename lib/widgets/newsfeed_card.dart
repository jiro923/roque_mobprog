import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surname_mobprog/widgets/custom_text.dart';
import '../constants.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final bool? hasImage;
  final String? profileImage;
  final String? postImage;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.hasImage,
    this.profileImage,
    this.postImage,
  });

  @override
  Widget build(BuildContext context) {
    final screenUtilSp = ScreenUtil().setSp(10);
    final screenUtilWidth = ScreenUtil().setWidth(10);
    final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
    final screenUtilIconSize = ScreenUtil().setSp(15);

    return Card(
      margin: EdgeInsets.all(screenUtilSp),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                profileImage != null
                    ? CircleAvatar(
                        radius: ScreenUtil().setSp(18),
                        backgroundImage: AssetImage(profileImage!),
                      )
                    : const Icon(Icons.person),
                SizedBox(width: screenUtilWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: screenUtilFontUserNameSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: screenUtilIconSize,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            if (postImage != null)
              Image.asset(
                postImage!,
                width: double.infinity,
                fit: BoxFit.cover,
              )
            else if (hasImage == true)
              const Image(image: AssetImage('assets/images/kluwi.jpg')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/like.png',
                    width: ScreenUtil().setSp(16),
                    height: ScreenUtil().setSp(16),
                  ),
                  label: CustomText(
                    text: (numOfLikes ?? 0).toString(),
                    fontSize: ScreenUtil().setSp(12),
                    color: fbDarkPrimary,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/comment.png',
                    width: ScreenUtil().setSp(16),
                    height: ScreenUtil().setSp(16),
                  ),
                  label: CustomText(
                    text: 'Comment',
                    fontSize: ScreenUtil().setSp(12),
                    color: fbDarkPrimary,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/share.png',
                    width: ScreenUtil().setSp(16),
                    height: ScreenUtil().setSp(16),
                  ),
                  label: CustomText(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: fbDarkPrimary,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  text: 'Most relevant',
                  fontSize: ScreenUtil().setSp(12),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(width: ScreenUtil().setWidth(3)),
                Image.asset(
                  'assets/icons/arrow.png',
                  width: ScreenUtil().setSp(14),
                  height: ScreenUtil().setSp(14),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(5)),
            Row(
              children: [
                profileImage != null
                    ? CircleAvatar(
                        radius: ScreenUtil().setSp(12),
                        backgroundImage: AssetImage(profileImage!),
                      )
                    : const Icon(Icons.person),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                      ScreenUtil().setWidth(10),
                      0,
                      0,
                      0,
                    ),
                    alignment: Alignment.centerLeft,
                    height: ScreenUtil().setHeight(25),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().setSp(10)),
                      ),
                    ),
                    child: CustomText(
                      text: 'Write a comment...',
                      fontSize: ScreenUtil().setSp(11),
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View all comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}