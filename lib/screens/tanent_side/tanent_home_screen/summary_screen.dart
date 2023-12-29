import 'package:flutter/material.dart';
import 'package:purple_hats/constant/reusable_text/reusable_text.dart';
import 'package:purple_hats/themes/app_colors.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({super.key});

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffFFFFFF),
          centerTitle: true,
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
            title: 'Summary',
            size: 18,
            weight: FontWeight.w700,
            color: Color(0xff593D77),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              const ReusableText(
                title: 'Package Details',
                size: 20,
                weight: FontWeight.w700,
                color: Color(0xff593D77),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const ReusableText(
                    title: 'Premium Plan',
                    size: 23,
                    weight: FontWeight.w600,
                    color: Color(0xff101719),
                  ),
                  const Spacer(),
                  RichText(
                    text: const TextSpan(
                        text: '\$39 ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: AppColors.mainColor),
                        children: [
                          TextSpan(
                              text: '\$50',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xffFF0000)))
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableText(
                title: 'One Time Plan',
                size: 16,
                weight: FontWeight.w600,
                color: Color(0xffFFCC00),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                    text: 'Expiry Date : ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Color(0xff8A8A8F)),
                    children: [
                      TextSpan(
                          text: '20-07-2023',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: Color(0xff8A8A8F)))
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                    text: 'Recurring :   ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Color(0xff8A8A8F)),
                    children: [
                      TextSpan(
                          text: 'True',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: Color(0xff8A8A8F)))
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                    text: 'Discount :     ',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Color(0xff8A8A8F)),
                    children: [
                      TextSpan(
                          text: '36% Off',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: Color(0xff8A8A8F)))
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const ReusableText(
                    title: 'Package Method',
                    size: 23,
                    weight: FontWeight.w600,
                    color: AppColors.mainColor,
                  ),
                  const Spacer(),
                  RichText(
                    text: const TextSpan(
                      text: 'Change',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color: Color(0xff6B6B6B)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffE8E6EA)),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF1F1F1)),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Bank Credit Card',
                      size: 18,
                      weight: FontWeight.w700,
                      color: Color(0xff7C7C7C),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image(
                            image: AssetImage(
                                "assets/images/home_screen/payment_method/image 6.png")),
                        SizedBox(
                          width: 10,
                        ),
                        ReusableText(
                          title: '0765 **** **** **92',
                          size: 18,
                          weight: FontWeight.w700,
                          color: Color(0xff8F8F8F),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              RichText(
                text: const TextSpan(
                  text: 'Use Promo Code ',
                  style: TextStyle(

                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: AppColors.mainColor),
                  children: [
                    TextSpan(
                    text: '(Optional)',
                    style: TextStyle(

                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Color(0xff8F8F8F)),)

                  ]
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 54,
                    width: MediaQuery.sizeOf(context).width*0.45,
                    decoration: BoxDecoration(
                        color: const Color(
                            0xffFFFFFF),
                        borderRadius:
                        BorderRadius
                            .circular(15)),
                    child: TextFormField(

                      decoration:
                      InputDecoration(
                          fillColor: Colors.white,filled: true,
                          enabledBorder:
                          OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:const BorderSide(
                                color:  Color(0xffE8E6EA),
                              )
                          ),
                          focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:const BorderSide(
                                color:  Color(0xffE8E6EA),
                              )
                          ),

                          hintText:
                          '  Type Here',
                          hintStyle: const TextStyle(
                              fontWeight:
                              FontWeight
                                  .w500,
                              fontSize: 15,
                              color: Color(
                                  0xff999CAD))),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: MediaQuery.sizeOf(context).width*0.35,

         height: 41,
                    decoration: BoxDecoration(
                        color: const Color(
                            0xffD8D8D8),
                        borderRadius:
                        BorderRadius
                            .circular(25)),
                    child: const Center(
                      child:
                      ReusableText(
                        title: 'Apply',
                        size: 12,
                        weight: FontWeight.w700,
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              Center(
                child: GestureDetector(
                  onTap: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>SummaryScreen()));
                  },
                  child: Container(
                    height: 41,

                    width: MediaQuery.sizeOf(context).width*0.60,
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(15),    color: AppColors.mainColor,
                    ),
                    child: const Center(child: ReusableText(title: 'Pay Now',size: 12,weight: FontWeight.w700,color:Colors.white,)),
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
