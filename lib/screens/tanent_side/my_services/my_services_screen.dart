import 'package:flutter/material.dart';

import '../../../constant/reusable_text/reusable_text.dart';
import '../../../themes/app_colors.dart';

class MyServicesScreen extends StatefulWidget {
  const MyServicesScreen({super.key});

  @override
  State<MyServicesScreen> createState() => _MyServicesScreenState();
}

class _MyServicesScreenState extends State<MyServicesScreen> {
  final List<String> daysList = ['M', 'T', 'W', 'Th', 'F', 'Sa', 'S'];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.mainColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const ReusableText(
          title: 'My Services',
          size: 18,
          weight: FontWeight.w700,
          color: AppColors.mainColor,
        ),
        actions: [
          Row(
            children: [
              ReusableText(
                title: 'All',
                size: 18,
                weight: FontWeight.w700,
                color: AppColors.mainColor,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.arrow_drop_down,
                color: AppColors.mainColor,
              )
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF2F2F2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        title: 'Car Wash',
                        size: 14,
                        weight: FontWeight.w700,
                        color: Color(0xff000000),
                      ),
                      Spacer(),
                      ReusableText(
                        title: '20 days left',
                        size: 12,
                        weight: FontWeight.w700,
                        color: Color(0xffF2441C),
                      ),
                    ],
                  ),
                  ReusableText(
                    title: '30 Days Subscription',
                    size: 12,
                    weight: FontWeight.w400,
                    color: Color(0xff8F8F8F),
                  ),
                  Row(
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Service Usage: ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff6D6D6D)),
                              children: [
                            TextSpan(
                              text: '11/20',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.mainColor),
                            )
                          ])),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_up_outlined,
                        color: Color(0xff8A8A8F),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReusableText(
                    title: 'Select Day',
                    size: 15,
                    weight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        daysList.length,
                        (index) => GestureDetector(
                          onTap: (){
                           setState(() {
                             _currentIndex=index;
                           });
                          },
                          child: Container(
                            height: 31,width: 31,
                            padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _currentIndex == index
                                        ? AppColors.mainColor
                                        : Colors.transparent,
                                    border: Border.all(
                                        color: _currentIndex == index
                                            ? Colors.transparent
                                            : AppColors.mainColor)),
                            child:    Center(
                              child: ReusableText(
                                title: daysList[index].toString(),
                                size: 12,
                                weight: FontWeight.w500,
                                color:_currentIndex==index?Colors.white:AppColors.mainColor,
                              ),
                            ),
                              ),
                        ),

                    ),
                  ),
                  SizedBox(height: 15,),
                  ReusableText(
                    title: 'Time Range Slot',
                    size: 14,
                    weight: FontWeight.w500,
                    color: Color(0xff000000),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,children: [
                        ReusableText(
                          title: 'Select',
                          size: 8,
                          weight: FontWeight.w500,
                          color: Color(0xff6D6D6D),
                        ),
                        SizedBox(height: 4,),
                        Container(
                          width: MediaQuery.sizeOf(context).width*0.40,
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 1),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,border: Border.all(color: AppColors.mainColor,)
                        ),
                        child: Row(
                          children: [
                            ReusableText(
                              title: 'Anytime',
                              size: 10,
                              weight: FontWeight.w400,
                              color: Color(0xff6D6D6D),
                            ),
Spacer(),
                            Icon(Icons.arrow_drop_down,color: Color(0xff8A8A8F),)
                          ],
                        ),

                        )
                      ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,children: [
                        ReusableText(
                          title: 'Time',
                          size: 8,
                          weight: FontWeight.w500,
                          color: Color(0xff6D6D6D),
                        ),
                        SizedBox(height: 4,),
                        Container(
                          width: MediaQuery.sizeOf(context).width*0.40,
                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 1),
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,border: Border.all(color: AppColors.mainColor,)
                        ),
                        child: Row(
                          children: [
                            ReusableText(
                              title: '12 : 30 AM',
                              size: 10,
                              weight: FontWeight.w400,
                              color: Color(0xff6D6D6D),
                            ),
Spacer(),
                            Icon(Icons.calendar_month,color: Color(0xff8A8A8F),)
                          ],
                        ),

                        )
                      ],
                      ),
                  ],
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Container(
                      height: 31,
                      width: MediaQuery.sizeOf(context).width*0.60,
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:AppColors.mainColor,border: Border.all(color: AppColors.mainColor,)
                      ),
                      child: Center(
                        child: ReusableText(
                          title: 'Request',
                          size: 12,
                          weight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
