import 'package:flutter/material.dart';
import 'package:purple_hats/constant/reusable_text/reusable_text.dart';
import 'package:purple_hats/themes/app_colors.dart';

class AllFacilitiesScreen extends StatefulWidget {
  const AllFacilitiesScreen({super.key});

  @override
  State<AllFacilitiesScreen> createState() => _AllFacilitiesScreenState();
}

class _AllFacilitiesScreenState extends State<AllFacilitiesScreen> {
  final List imgList=[
'assets/images/home_screen/facilities_screen/woman-loading-wash-machine-to-clean-clothes-6596934-5604116 1.png',
    'assets/images/home_screen/facilities_screen/image 9.png',

    'assets/images/home_screen/facilities_screen/image 11.png',
    'assets/images/home_screen/facilities_screen/image 10.png',
    'assets/images/home_screen/facilities_screen/image 11 (1).png',

    'assets/images/home_screen/facilities_screen/image-removebg-preview (9) 1.png',
    'assets/images/home_screen/facilities_screen/image 11 (2).png',
  ];

  final List imgTitle=[
    'Laundry',
    'Housekeeing',
    'Cooking',
    'Pet Care',
    'Tailoring',
    'Car Washing',
    'Gardening'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back,color:AppColors.mainColor,),onPressed: (){
          Navigator.pop(context);
        },),
        title: ReusableText(title: 'Facilities',size: 18,weight: FontWeight.w700,color:Color(0xff593D77),),
      actions: [
        Icon(Icons.search,color: Color(0xff5B5B5B),),
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(

        children: [GridView.builder(

          shrinkWrap: true,itemCount:imgList.length,
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 10,mainAxisSpacing: 10,
          childAspectRatio: 20/16,
          crossAxisCount: 2,
        ), itemBuilder: (BuildContext context, int index) { return Container(
          height: 111,
          padding: EdgeInsets.all(10),

          decoration: BoxDecoration(

              color: Color(0xffFFFFFF),
              border: Border.all(color: Color(0xff593D77)),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              Image(
height: 80,
                image: AssetImage(
                  imgList[index].toString()
                ),),

              ReusableText(title: imgTitle[index].toString(),size: 12,weight: FontWeight.w500,color:Color(0xff593D77),)

            ],
          ),
        ); }, )



        ],
    ),
      ),));
  }
}
