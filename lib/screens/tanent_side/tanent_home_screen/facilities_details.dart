
import 'package:flutter/material.dart';
import 'package:purple_hats/constant/reusable_text/reusable_text.dart';
import 'package:purple_hats/screens/tanent_side/tanent_home_screen/payment_method_screen.dart';
import 'package:purple_hats/themes/app_colors.dart';

class FacilitiesDetails extends StatefulWidget {
  const FacilitiesDetails({super.key});

  @override
  State<FacilitiesDetails> createState() => _FacilitiesDetailsState();
}

class _FacilitiesDetailsState extends State<FacilitiesDetails> {
  int currentIndex = 0;
  String? gender;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(   backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.arrow_back,color:AppColors.mainColor,),onPressed: (){
          Navigator.pop(context);
        },),
        title: const ReusableText(title: 'Facility Detail',size: 18,weight: FontWeight.w700,color:Color(0xff593D77),),

      ),
      body: Padding(
      padding: const EdgeInsets.all(15),
      child: ListView(
children: [
          Image(
              width: MediaQuery.sizeOf(context).width*1,fit: BoxFit.cover,
              image: const AssetImage("assets/images/home_screen/facilities_screen/Rectangle 156.png")),
        const SizedBox(height: 10,),
        const ReusableText(title: 'Laundry',size: 18,weight: FontWeight.w700,color:Color(0xff593D77),),
        const SizedBox(height: 10,),
        const ReusableText(title: 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',size: 12,weight: FontWeight.w500,color:Color(0xff979797),),
        const SizedBox(height: 10,),
        const Divider(thickness: 2,height: 2,color: Color(0xffF5F4F8),),
        const SizedBox(height: 10,),
        const ReusableText(title: 'Select Plan',size: 18,weight: FontWeight.w700,color:Color(0xff593D77),),
        const SizedBox(height: 10,),

  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: [
    Container(
      width: MediaQuery.sizeOf(context).width*0.48,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          boxShadow: [
            const BoxShadow(
              offset: Offset(0,0),
              blurRadius: 4,blurStyle: BlurStyle.normal,
              spreadRadius: 2,
              color: Color(0x40252525),
            ),

          ],
          border: Border.all(color:   const Color(0xffFFFFFF),),
          borderRadius: BorderRadius.circular(10),gradient: const LinearGradient(
          colors: [
            Color(0xff593D77),
            Color(0xff8867AB),

          ]
      )
      ),
      child: Column(
        children: [

          Row(
            children: [
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(15),color: const Color(0xffFF9900)
                ),
                child: const Center(child: ReusableText(title: 'POPULAR',size: 14,weight: FontWeight.w600,color:Color(0xffFFFFFF),)),
              )
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ReusableText(title: 'Premium Plan',size: 20,weight: FontWeight.w600,color:Color(0xffD8D8D8),),
              const SizedBox(height: 10,),
              const ReusableText(title: '\$39',size: 15,weight: FontWeight.w700,color:Color(0xffFFFFFF),),

              RichText(text:const TextSpan(
                text: '\$50',
                style: TextStyle(
                 decoration: TextDecoration.lineThrough,
                  fontWeight: FontWeight.w600,fontSize: 20,color: Color(0xffFF0000)
                )
              )),
              const ReusableText(title: 'Package 36% OFF ',size: 16,weight: FontWeight.w600,color:Color(0xffBEBEBE),),

              const ReusableText(title: 'One Time Plan',size: 20,weight: FontWeight.w600,color:Color(0xffFFCC00),),

              Container(height: 2,width: 90,color: const Color(0xffFFFFFF),),
              const ReusableText(title: 'This is the one time plan in which services will provide only one time and also charge will be also one time.',alignment: TextAlign.center,size: 10,weight: FontWeight.w500,color:Color(0xffCCCCCC),),
              const SizedBox(height: 10,),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height: 5,width: 5,decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFFFFF),
                  ),),
                  const SizedBox(width: 10,),
                  const ReusableText(title: 'Special Wash',size: 8,weight: FontWeight.w600,color:Color(0xffFFFFFF),),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height: 5,width: 5,decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFFFFF),
                  ),),
                  const SizedBox(width: 10,),
                  const ReusableText(title: 'Iron',size: 8,weight: FontWeight.w600,color:Color(0xffFFFFFF),),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(height: 5,width: 5,decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffFFFFFF),
                  ),),
                  const SizedBox(width: 10,),
                  const ReusableText(title: 'Urgent',size: 8,weight: FontWeight.w600,color:Color(0xffFFFFFF),),
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                width: MediaQuery.sizeOf(context).width*0.40,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(15),color: const Color(0xffFFFFFF)
                ),
                child: const Center(child: ReusableText(title: 'Subscribe',size: 14,weight: FontWeight.w700,color:AppColors.mainColor,)),
              ),

            ],
          )
        ],
      ),
    ),

     Container(
       width: MediaQuery.sizeOf(context).width*0.40,
       padding: const EdgeInsets.all(10),
       decoration: BoxDecoration(

           border: Border.all(color:   AppColors.mainColor,),
           borderRadius: BorderRadius.circular(10),color: const Color(0xffF1F1F1)
       ),
       child: Column(
         children: [

           Row(
             children: [
               const Spacer(),
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                 decoration:BoxDecoration(
                     borderRadius: BorderRadius.circular(15),color: const Color(0xffFF9900)
                 ),
                 child: const Center(child: ReusableText(title: 'Membership',size: 14,weight: FontWeight.w600,color:Color(0xffFFFFFF),)),
               )
             ],
           ),

           Column(
             crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
             children: [
               const ReusableText(title: 'Advanced Plan',size: 15,weight: FontWeight.w600,color:Color(0xff000000),),
               const ReusableText(title: '\$39',size: 15,weight: FontWeight.w700,color:AppColors.mainColor,),
               const ReusableText(title: 'PER MONTH',size: 20,weight: FontWeight.w600,color:Color(0xff555E62),),

               Container(height: 2,width: 90,color: AppColors.mainColor,),
               const ReusableText(title: 'This is the daily package in which services will provide on daily basis and also charge will be also on daily basis.',alignment: TextAlign.center,size: 8,weight: FontWeight.w500,color:Color(0xff979797),),
               const SizedBox(height: 10,),

               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(height: 5,width: 5,decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: AppColors.mainColor,
                   ),),
                   const SizedBox(width: 10,),
                   const ReusableText(title: 'Special Wash',size: 8,weight: FontWeight.w600,    color: AppColors.mainColor,),
                 ],
               ),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(height: 5,width: 5,decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: AppColors.mainColor,
                   ),),
                   const SizedBox(width: 10,),
                   const ReusableText(title: 'Iron',size: 8,weight: FontWeight.w600,    color: AppColors.mainColor,),
                 ],
               ),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(height: 5,width: 5,decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: AppColors.mainColor,
                   ),),
                   const SizedBox(width: 10,),
                   const ReusableText(title: 'Urgent',size: 8,weight: FontWeight.w600,    color: AppColors.mainColor,),
                 ],
               ),
               const SizedBox(height: 15,),
               Container(
                 padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                 width: MediaQuery.sizeOf(context).width*0.40,
                 decoration:BoxDecoration(
                     borderRadius: BorderRadius.circular(15),    color: AppColors.mainColor,
                 ),
                 child: const Center(child: ReusableText(title: 'Subscribe',size: 14,weight: FontWeight.w700,color:Colors.white,)),
               ),

             ],
           )
         ],
       ),
     ),
  ],
  ),
        const SizedBox(height: 20,),

        Center(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PaymentMethodScreen()));
            },
            child: Container(
              height: 41,

              width: MediaQuery.sizeOf(context).width*0.60,

// margin: EdgeInsets.symmetric(horizontal: 40),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(15),    color: AppColors.mainColor,
              ),
              child: const Center(child: ReusableText(title: 'Next',size: 12,weight: FontWeight.w700,color:Colors.white,)),
            ),
          ),
        ),




      ],
      ),
    ),
    ),
    );

  }
}