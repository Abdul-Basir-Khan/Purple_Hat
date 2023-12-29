import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:purple_hats/constant/reusable_text/reusable_text.dart';
import 'package:purple_hats/themes/app_colors.dart';


class HomeScreenOwner extends StatefulWidget {
  const HomeScreenOwner({super.key});

  @override
  State<HomeScreenOwner> createState() => _HomeScreenOwnerState();
}

class _HomeScreenOwnerState extends State<HomeScreenOwner> {
  int currentIndex = 0;

  final List imageList=[
'assets/images/home_screen/Rectangle 117 (1).png',
'assets/images/home_screen/Rectangle 117 (2).png',
'assets/images/home_screen/Rectangle 117 (3).png',
  ];
  final List titleList=[
'Carpenter',
'Clean Sweeper',
    'Electrician',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(


      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              SvgPicture.asset('assets/icons/bottomBar/Group 171.svg',color: Color(0xff87739E),),
              Spacer(),
              ReusableText(title: 'Lake City - Apt # 456',size: 18,weight: FontWeight.w700,color:Color(0xff593D77),)
              ,Spacer(),
              SvgPicture.asset('assets/icons/bottomBar/notification icon.svg',color:Color(0xf755F447D),),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Divider(thickness: 3,height: 3,color: Color(0xffF5F4F8),),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ReusableText(title: 'Announcements',size: 16,weight: FontWeight.w700,color:Color(0xff000000),),
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.sizeOf(context).width*0.80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(31)
            ),
            child: Column(
              children: [
                Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/home_screen/Rectangle 117.png")),
                SizedBox(height: 10,),
                DotsIndicator(
                  dotsCount: 5,
                  // position: currentIndexPage,
                  decorator: DotsDecorator(
                    color: Color(0xffD4D4D6),
                    activeColor: Color(0xffA08EB7),
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ],
            )),
        SizedBox(height: 10,),



        SizedBox(height: 10,),
        Divider(thickness: 3,height: 3,color: Color(0xffF5F4F8),),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ReusableText(title: 'Services',size: 16,weight: FontWeight.w700,color:Color(0xff000000),),
        ),
        SizedBox(height: 10,),
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 0.4,
         enlargeCenterPage: true,
              onPageChanged: (index, CarouselPageChangedReason){
                currentIndex = index;
                setState(() {

                });
              },
            height: 232
             ),
          items: List.generate(imageList.length, (index){
            return Container(

                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Color(0xffF5F4F8),
                  borderRadius: BorderRadius.circular(10)
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(imageList[index].toString()),
                      ),
                    ),
                    SizedBox(height: 10,),
                    ReusableText(title: titleList[index].toString(),size: 15,weight: FontWeight.w600,color: AppColors.mainColor,)
                  ],
                )
            );
          }
          ),
        ),
        SizedBox(height: 20,),
        Divider(thickness: 3,height: 3,color: Color(0xffF5F4F8),),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: ReusableText(title: 'Reminders',size: 16,weight: FontWeight.w700,color:Color(0xff000000),),
        ),

        SizedBox(height: 10,),
        Container(
          height: 157,
            margin: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.sizeOf(context).width*0.80,
            decoration: BoxDecoration(
              color: Color(0xffF5F4F8),
                borderRadius: BorderRadius.circular(31)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ReusableText(title: 'Today is the meeting in community hall of lake city.',size: 13,weight: FontWeight.w400,color:AppColors.mainColor),


              ],
            )),
        SizedBox(height: 10,),
        Align(
          alignment: Alignment.center,
          child: DotsIndicator(
            dotsCount: 5,
            // position: currentIndexPage,
            decorator: DotsDecorator(
              color: Color(0xffD4D4D6), // Inactive color
              activeColor:AppColors.mainColor,
            ),
          ),
        ),
        SizedBox(height: 10,),

        SizedBox(height: 20,),
        Divider(thickness: 3,height: 3,color: Color(0xffF5F4F8),),
        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.only(left: 40,right: 10),
          child: Row(
            children: [
              ReusableText(title: 'Quick Access',size: 16,weight: FontWeight.w700,color:Color(0xff000000),),
              Spacer(),
              ReusableText(title: 'See All',size: 10,weight: FontWeight.w500,color:AppColors.mainColor,),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image(
                height: 160,
                image: AssetImage(
                'assets/images/home_screen/Frame 1.png'
              ),),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                children: [
                  Image(
                    height: 160,
                    image: AssetImage(
                    'assets/images/home_screen/Frame 2.png'
                  ),),
                  Positioned(
                      bottom: 5,left: 10,
                      child: ReusableText(title: 'Request\nMaintenance',size: 24,weight: FontWeight.w900,color:Color(0xffFFFFFF),)),
                ],
              ),
            ),
          ),

        ],),
        SizedBox(height: 10,),


      ],
    );
  }
}
