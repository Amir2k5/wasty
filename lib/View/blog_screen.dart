import 'package:app6/View/blog_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            'assets/images/blog.png',
            height: 249.h,
            width: 414.w,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Newest',
                  style: TextStyle(fontSize: 21.sp),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    thickness: 2,
                    endIndent: 30,
                    indent: 30,
                  ),
                ),
                Container(
                  height: 48.h,
                  width: 62.w,
                  color: Color(0xff4D8D6E),
                  child: Center(
                      child: Icon(
                    Icons.tune,
                    color: Colors.white,
                    size: 30.sp,
                  )),
                )
              ],
            ),
          ),
          SizedBox(
            height: 410.h,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BlogDetailScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 192, 192, 192),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(1, 0))
                    ]),
                    margin: EdgeInsets.all(5.sp),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Hero(
                            tag: 'blog_tag$index',
                            child: Image.asset(
                              index % 2 != 0
                                  ? 'assets/images/garbage.png'
                                  : 'assets/images/blog2.png',
                              height: 128.h,
                              width: 104.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Statistic shows that',
                                style: TextStyle(
                                    fontSize: 20.sp, color: Colors.black),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                  'Seperate paper collections helps save \n24,000 trees per year Seperate'),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text('Source: ekopak.bg',
                                  style: TextStyle(
                                      fontSize: 15.sp, color: Colors.grey))
                            ],
                          )
                        ]),
                  ),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
