import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlogDetailScreen extends StatefulWidget {
  const BlogDetailScreen({super.key});

  @override
  State<BlogDetailScreen> createState() => _BlogDetailScreenState();
}

class _BlogDetailScreenState extends State<BlogDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Hero(
            tag: 'blog_tag2',
            child: Image.asset(
              'assets/images/blog2.png',
              height: 242.h + kToolbarHeight,
              width: 414.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 21.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 28.w),
            child: Column(children: [
              Text(
                'For or against the separatewaste collection',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.sp),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.',
                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 22.h,
              ),
              Text(
                "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks ",
                style: TextStyle(fontSize: 19.sp, fontWeight: FontWeight.w300),
              ),
            ]),
          ),
          SizedBox(
            height: 15.h,
          ),
          Image.asset(
            'assets/images/garbage2.png',
            // height: 255.h,
            width: 414.w,
          ),
          Container(
            width: 414.w,
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Center(
              child: Text(
                "There are many variations of passages of \nLorem Ipsum available, but the majority \nhave suffered alteration in some form, by \ninjected humour, or randomised words \nwhich don't look even slightly believable. \nIf you are going to use a passage of. ",
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w300),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
