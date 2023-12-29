import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:purple_hats/constant/reusable_text/reusable_text.dart';
import 'package:purple_hats/screens/tanent_side/tanent_home_screen/all_facilities_Screen.dart';
import 'package:purple_hats/screens/tanent_side/tanent_home_screen/facilities_details.dart';
import 'package:purple_hats/themes/app_colors.dart';

class TanentHomeScreen extends StatefulWidget {
  const TanentHomeScreen({super.key});

  @override
  State<TanentHomeScreen> createState() => _TanentHomeScreenState();
}

class _TanentHomeScreenState extends State<TanentHomeScreen> {
  int currentIndex = 0;

  final List imageList = [
    'assets/images/home_screen/Rectangle 117 (1).png',
    'assets/images/home_screen/Rectangle 117 (2).png',
    'assets/images/home_screen/Rectangle 117 (3).png',
  ];
  final List titleList = [
    'Carpenter',
    'Clean Sweeper',
    'Electrician',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.sizeOf(context).width * 0.80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(31)),
            child: Column(
              children: [
                const Image(
                    fit: BoxFit.cover,
                    image:
                        AssetImage("assets/images/home_screen/Group 243.png")),
                const SizedBox(
                  height: 10,
                ),
                DotsIndicator(
                  dotsCount: 3,
                  // position: currentIndexPage,
                  decorator: const DotsDecorator(
                    color: Color(0xffD4D4D6), // Inactive color
                    activeColor: AppColors.mainColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 3,
                  height: 3,
                  color: Color(0xffF5F4F8),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              const ReusableText(
                title: 'Facilities',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff343434),
              ),
              const Spacer(),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AllFacilitiesScreen()));
                  },
                  child: const ReusableText(
                    title: 'See All',
                    size: 10,
                    weight: FontWeight.w500,
                    color: AppColors.mainColor,
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        Container(
          width: double.infinity,
          height: 84,
          color: const Color(0xff9176AE),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -60,
                left: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const FacilitiesDetails()));
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.18,
                        margin: const EdgeInsets.only(right: 21),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 4),
                                // Add a shadow to the left (negative X offset)
                                blurRadius: 4,
                                // Adjust the blur radius as needed
                                color:
                                    Color(0x40252525), // 25% black shadow color
                              ),
                              BoxShadow(
                                offset: Offset(0, 4),
                                // Add a shadow to the bottom (positive Y offset)
                                blurRadius: 4,
                                // Adjust the blur radius as needed
                                color:
                                    Color(0x40252525), // 25% black shadow color
                              ),
                            ]),
                        child: Column(
                          children: [
                            Container(
                              height: 46,
                              width: 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffFAFAFA)),
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/images/home_screen/Group 556.svg"),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const ReusableText(
                              title: 'Laundry',
                              size: 10,
                              weight: FontWeight.w600,
                              color: Color(0xff243137),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const FacilitiesDetails()));
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.18,
                        margin: const EdgeInsets.only(right: 21),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 4),
                                // Add a shadow to the left (negative X offset)
                                blurRadius: 4,
                                // Adjust the blur radius as needed
                                color:
                                    Color(0x40252525), // 25% black shadow color
                              ),
                              BoxShadow(
                                offset: Offset(0, 4),
                                // Add a shadow to the bottom (positive Y offset)
                                blurRadius: 4,
                                // Adjust the blur radius as needed
                                color:
                                    Color(0x40252525), // 25% black shadow color
                              ),
                            ]),
                        child: Column(
                          children: [
                            Container(
                              height: 46,
                              width: 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffFAFAFA)),
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/images/home_screen/Vector.svg"),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const ReusableText(
                              title: 'Pet Care',
                              size: 10,
                              weight: FontWeight.w600,
                              color: Color(0xff243137),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const FacilitiesDetails()));
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.18,
                        margin: const EdgeInsets.only(right: 21),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 4),
                                // Add a shadow to the left (negative X offset)
                                blurRadius: 4,
                                // Adjust the blur radius as needed
                                color:
                                    Color(0x40252525), // 25% black shadow color
                              ),
                              BoxShadow(
                                offset: Offset(0, 4),
                                // Add a shadow to the bottom (positive Y offset)
                                blurRadius: 4,
                                // Adjust the blur radius as needed
                                color:
                                    Color(0x40252525), // 25% black shadow color
                              ),
                            ]),
                        child: Column(
                          children: [
                            Container(
                              height: 46,
                              width: 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffFAFAFA)),
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/images/home_screen/Vector (1).svg"),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const ReusableText(
                              title: 'Cooking',
                              size: 10,
                              weight: FontWeight.w600,
                              color: Color(0xff243137),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const FacilitiesDetails()));
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.18,
                        margin: const EdgeInsets.only(right: 21),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 4),
                                // Add a shadow to the left (negative X offset)
                                blurRadius: 4,
                                // Adjust the blur radius as needed
                                color:
                                    Color(0x40252525), // 25% black shadow color
                              ),
                              BoxShadow(
                                offset: Offset(0, 4),
                                // Add a shadow to the bottom (positive Y offset)
                                blurRadius: 4,
                                // Adjust the blur radius as needed
                                color:
                                    Color(0x40252525), // 25% black shadow color
                              ),
                            ]),
                        child: Column(
                          children: [
                            Container(
                              height: 46,
                              width: 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffFAFAFA)),
                              child: Center(
                                child: SvgPicture.asset(
                                    "assets/images/home_screen/Vector (2).svg"),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const ReusableText(
                              title: 'Cleaning',
                              size: 10,
                              weight: FontWeight.w600,
                              color: Color(0xff243137),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -60,
                left: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.18,
                      margin: const EdgeInsets.only(right: 21),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(4, 0),
                              // Add a shadow to the left (negative X offset)
                              blurRadius: 4,
                              // Adjust the blur radius as needed
                              color:
                                  Color(0x40252525), // 25% black shadow color
                            ),
                            BoxShadow(
                              offset: Offset(0, 4),
                              // Add a shadow to the bottom (positive Y offset)
                              blurRadius: 4,
                              // Adjust the blur radius as needed
                              color:
                                  Color(0x40252525), // 25% black shadow color
                            ),
                          ]),
                      child: Column(
                        children: [
                          Container(
                            height: 46,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffFAFAFA)),
                            child: Center(
                              child: SvgPicture.asset(
                                  "assets/images/home_screen/Vector (3).svg"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const ReusableText(
                            title: 'Car Wash',
                            size: 10,
                            weight: FontWeight.w600,
                            color: Color(0xff243137),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.18,
                      margin: const EdgeInsets.only(right: 21),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(4, 0),
                              // Add a shadow to the left (negative X offset)
                              blurRadius: 4,
                              // Adjust the blur radius as needed
                              color:
                                  Color(0x40252525), // 25% black shadow color
                            ),
                            BoxShadow(
                              offset: Offset(0, 4),
                              // Add a shadow to the bottom (positive Y offset)
                              blurRadius: 4,
                              // Adjust the blur radius as needed
                              color:
                                  Color(0x40252525), // 25% black shadow color
                            ),
                          ]),
                      child: Column(
                        children: [
                          Container(
                            height: 46,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffFAFAFA)),
                            child: Center(
                              child: SvgPicture.asset(
                                  "assets/images/home_screen/Vector (4).svg"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const ReusableText(
                            title: 'Gardening',
                            size: 10,
                            weight: FontWeight.w600,
                            color: Color(0xff243137),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.18,
                      margin: const EdgeInsets.only(right: 21),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(4, 0),
                              // Add a shadow to the left (negative X offset)
                              blurRadius: 4,
                              // Adjust the blur radius as needed
                              color:
                                  Color(0x40252525), // 25% black shadow color
                            ),
                            BoxShadow(
                              offset: Offset(0, 4),
                              // Add a shadow to the bottom (positive Y offset)
                              blurRadius: 4,
                              // Adjust the blur radius as needed
                              color:
                                  Color(0x40252525), // 25% black shadow color
                            ),
                          ]),
                      child: Column(
                        children: [
                          Container(
                            height: 46,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffFAFAFA)),
                            child: Center(
                              child: SvgPicture.asset(
                                  "assets/images/home_screen/Vector (5).svg"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const ReusableText(
                            title: 'Tailor',
                            size: 10,
                            weight: FontWeight.w600,
                            color: Color(0xff243137),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.sizeOf(context).width * 0.80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(31)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  thickness: 3,
                  height: 3,
                  color: Color(0xffF5F4F8),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title: 'Announcements',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff343434),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    const Image(
                        image: AssetImage("assets/images/home_screen/Rec.png")),
                    Positioned(
                        top: 40,
                        bottom: 20,
                        right: MediaQuery.sizeOf(context).width * 0.30,
                        left: MediaQuery.sizeOf(context).width * 0.30,
                        child: const ReusableText(
                            title:
                                'Today is the meeting in\ncommunity hall of lake\ncity.',
                            size: 13,
                            weight: FontWeight.w400,
                            color: Color(0xff243137))),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: DotsIndicator(
                    dotsCount: 5,
                    // position: currentIndexPage,
                    decorator: const DotsDecorator(
                      color: Color(0xffD4D4D6), // Inactive color
                      activeColor: AppColors.mainColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 3,
                  height: 3,
                  color: Color(0xffF5F4F8),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: ReusableText(
            title: 'Quick Access',
            size: 16,
            weight: FontWeight.w700,
            color: Color(0xff000000),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 111,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 10, left: 10),
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF),
                    border: Border.all(color: const Color(0xff593D77)),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 4),
                        // Add a shadow to the left (negative X offset)
                        blurRadius: 4,
                        // Adjust the blur radius as needed
                        color: Color(0x40252525), // 25% black shadow color
                      ),
                      BoxShadow(
                        offset: Offset(0, 4),
                        // Add a shadow to the bottom (positive Y offset)
                        blurRadius: 4,
                        // Adjust the blur radius as needed
                        color: Color(0x40252525), // 25% black shadow color
                      ),
                    ]),
                child: const Column(
                  children: [
                    Image(
                      height: 65,
                      image:
                          AssetImage('assets/images/home_screen/image 15.png'),
                    ),
                    ReusableText(
                      title: 'Bill Payments',
                      size: 12,
                      weight: FontWeight.w500,
                      color: Color(0xff593D77),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 111,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 4),
                        // Add a shadow to the left (negative X offset)
                        blurRadius: 4,
                        // Adjust the blur radius as needed
                        color: Color(0x40252525), // 25% black shadow color
                      ),
                      BoxShadow(
                        offset: Offset(0, 4),
                        // Add a shadow to the bottom (positive Y offset)
                        blurRadius: 4,
                        // Adjust the blur radius as needed
                        color: Color(0x40252525), // 25% black shadow color
                      ),
                    ],
                    color: const Color(0xffFFFFFF),
                    border: Border.all(color: const Color(0xff593D77)),
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  children: [
                    Image(
                      image: AssetImage(
                          'assets/images/home_screen/image-removebg-preview (13) 1.png'),
                    ),
                    ReusableText(
                      title: 'Maintenance Services',
                      size: 12,
                      weight: FontWeight.w500,
                      color: Color(0xff593D77),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
