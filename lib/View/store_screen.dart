import 'package:app6/View/store_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  // @override
  // void initState() {
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       content: Container(
  //         child: Column(
  //           children: [
  //             Image.asset(
  //               'assets/images/store1.png',
  //               width: 384.w,
  //               height: 230.h,
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/store.png',
                  height: 230.h,
                  width: 384.w,
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.h),
                  height: 60.h,
                  width: double.infinity,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 91.w,
                        height: 56.h,
                        color: Color(0xffEEB544),
                        child: Center(
                          child: Text(
                            'all',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 91.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xffEEB544)),
                        ),
                        child: Center(
                          child: Text(
                            'tools',
                            style: TextStyle(
                              color: Color(0xffEEB544),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 130.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xffEEB544)),
                        ),
                        child: Center(
                          child: Text(
                            'allowances',
                            style: TextStyle(
                              color: Color(0xffEEB544),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        width: 91.w,
                        height: 56.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xffEEB544)),
                        ),
                        child: Center(
                          child: Text(
                            'gardens  ',
                            style: TextStyle(
                              color: Color(0xffEEB544),
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 365.h,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ItemDetailScreen(),
                      )),
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: [
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
                                tag: 'shoppingbag$index',
                                child: Image.asset(
                                  'assets/images/shoppingbag.png',
                                  height: 144.h,
                                  width: 154.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Container for \ncomposting',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(
                                    height: 35.h,
                                  ),
                                  Text('Source: ekopak.bg',
                                      style: TextStyle(
                                          fontSize: 15.sp, color: Colors.grey))
                                ],
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Image.asset(
                                'assets/images/discount.png',
                                width: 64.w,
                                height: 72.h,
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
