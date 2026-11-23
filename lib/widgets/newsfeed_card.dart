
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import 'custom_text.dart';

class NewsFeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numLikes;
  final bool hasImage;

  const NewsFeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numLikes = 0,
    this.hasImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.w),
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22.r,
                backgroundColor: FB_PRIMARY,
                child: Text(
                  userName.isNotEmpty
                      ? userName[0].toUpperCase()
                      : '?',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: userName,
                    fontSize: 15.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: date,
                    fontSize: 12.sp,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.h),
          CustomText(
            text: postContent,
            fontSize: 14.sp,
            color: Colors.black,
          ),
          SizedBox(height: 10.h),

          if (hasImage)
            Container(
              height: 180.h,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: const Center(
                child: Icon(
                  Icons.image,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
            ),

          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: '$numLikes Likes',
                fontSize: 12.sp,
                color: Colors.grey,
              ),
              CustomText(
                text: 'View comments',
                fontSize: 12.sp,
                color: Colors.grey,
              ),
            ],
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_up_alt_outlined,
                  color: FB_DARK_PRIMARY,
                ),
                label: const Text(
                  'Like',
                  style: TextStyle(color: FB_DARK_PRIMARY),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.comment_outlined,
                  color: FB_DARK_PRIMARY,
                ),
                label: const Text(
                  'Comment',
                  style: TextStyle(color: FB_DARK_PRIMARY),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
