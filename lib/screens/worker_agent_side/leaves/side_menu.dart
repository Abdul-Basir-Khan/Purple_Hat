import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant/reusable_text/reusable_text.dart';
import '../../../themes/app_colors.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  bool _isPayment=false;
  bool _isSetting=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body:  ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
         Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center
                ,children: [
                  Center(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width*0.80,
                          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xffFFFFFF),
                            border: Border.all(color: Color(0xff959595),width: 3)
                        
                        
                          ),
                          child: Column(
                            children: [
                             Stack(
                        clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 53,
                                    color: AppColors.mainColor,
                                    child: Row(
                                      children: [
                                        Spacer(),
                                        Container
                                          (
                                          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Center(
                                          child: Image(image: AssetImage("assets/icons/image 4.png"),),
                                        ),
                                        )
                                      ],
                                    ),
                                  ),
                                Positioned(
                                  top: 20,left: 10,
                                  child: Container(
                                    height: 65,width: 65,
                                    decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                  color: Color(0xffD9D9D9)
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xffD9D9D9),
                                    backgroundImage: AssetImage("assets/icons/drawer/image 1.png"),
                                  ),
                                  ),
                                ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 90),
                                child: Row(
                                  children: [
                                    Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ReusableText(title: 'Tom Danis',size: 10,weight: FontWeight.w500,color: Color(0xff000000),),
                                        ReusableText(title: 'Carpenter',size: 7,weight: FontWeight.w500,color: Color(0xff60467E),),
                        
                                      ],
                                    ),
                                    Spacer(),
                                    Image(image: AssetImage("assets/icons/drawer/image 2.png"))
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ReusableText(title: 'ID No.',size: 5,weight: FontWeight.w500,color: Color(0xff555555),),
                                        ReusableText(title: '189202684973',size: 7,weight: FontWeight.w500,color: Color(0xff000000),),
                        
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ReusableText(title: 'Joined Date',size: 5,weight: FontWeight.w500,color: Color(0xff555555),),
                                        ReusableText(title: '03/04/2023',size: 7,weight: FontWeight.w500,color: Color(0xff000000),),
                        
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ReusableText(title: 'Phone No.',size: 5,weight: FontWeight.w500,color: Color(0xff555555),),
                                        ReusableText(title: '+92 331 89 47 568',size: 7,weight: FontWeight.w500,color: Color(0xff000000),),
                        
                                      ],
                                    ),
                                  ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ReusableText(title: 'DOB',size: 5,weight: FontWeight.w500,color: Color(0xff555555),),
                                      ReusableText(title: '03/04/2023',size: 7,weight: FontWeight.w500,color: Color(0xff000000),),
                        
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ReusableText(title: 'Blood Group',size: 5,weight: FontWeight.w500,color: Color(0xff555555),),
                                      ReusableText(title: 'O+',size: 7,weight: FontWeight.w500,color: Color(0xff000000),),
                        
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ReusableText(title: 'Emergency Phone No.',size: 5,weight: FontWeight.w500,color: Color(0xff555555),),
                                      ReusableText(title: '+92 331 89 47 568',size: 7,weight: FontWeight.w500,color: Color(0xff000000),),
                        
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: MediaQuery.sizeOf(context).width*0.80,
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width*0.39,
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12,),
                                decoration: BoxDecoration(
                                  color: Color(0xffDBE2D7),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: ReusableText(
                                    title: 'Check In',size:14 ,weight:FontWeight.w700 ,color: Color(0xff3D775B),
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: MediaQuery.sizeOf(context).width*0.39,
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 12,),
                                decoration: BoxDecoration(
                                  color: Color(0xffE4D8D8),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: ReusableText(
                                    title: 'Check Out',size:14 ,weight:FontWeight.w700 ,color: Color(0xff773D3D),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height*0.70,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight:  Radius.circular(10))
              ),

              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyInfo()));
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      child: Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,children: [
                        Icon(Icons.person_outline_sharp,color: Color(0xffA196CB),),
                        SizedBox(width: 20,),
                        ReusableText(title: 'My Profile',size: 18,weight: FontWeight.w500,color: Color(0xff000000),),

                      ],
                      ),
                    ),
                  ),
                  const Divider(thickness: 2,height: 2,color: Color(0xf40A196CB),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,children: [
                          SvgPicture.asset("assets/icons/drawer/Vector (3).svg",color: const Color(0xffA196CB),),
                          const SizedBox(width: 20,),
                          const ReusableText(title: 'Payments',size: 18,weight: FontWeight.w500,color: Color(0xff000000),),
                          const Spacer(),
                          GestureDetector(
                              onTap: (){

                                setState(() {
                                  _isPayment=!_isPayment;
                                });
                              },
                              child

                              : const Icon(Icons.arrow_drop_down,color: Color(0xff60467E),))
                        ],
                        ),
                        SizedBox(height: 10,),
                        Visibility(
                            visible: _isPayment,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 46,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  const ReusableText(title: 'Pay Slips',size: 18,weight: FontWeight.w500,color: Color(0xf60000000),),
                                    SizedBox(height: 10,),
                                    const ReusableText(title: 'Payment Setup',size: 18,weight: FontWeight.w500,color: Color(0xf60000000),),
                                ],),
                              ],
                            ))
                      ],
                    ),
                  ),

                  const Divider(thickness: 2,height: 2,color: Color(0xf40A196CB),),
                 Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,children: [
                          Icon(Icons.settings_rounded,color: Color(0xffA196CB),),
                          SizedBox(width: 20,),
                          ReusableText(title: 'Setting',size: 18,weight: FontWeight.w500,color: Color(0xff000000),),
                          Spacer(),
                          GestureDetector(
                              onTap: (){

                                setState(() {
                                  _isSetting=!_isSetting;
                                });
                              },
                              child: Icon(Icons.arrow_drop_down,color: Color(0xff60467E),))
                        ],
                        ),
                        SizedBox(height: 10,),
                        Visibility(
                            visible: _isSetting,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(width: 46,),
                                const ReusableText(title: 'Language',size: 18,weight: FontWeight.w500,color: Color(0xf60000000),),

                                Spacer(),
                                const ReusableText(title: 'ENG',size: 18,weight: FontWeight.w500,color:AppColors.mainColor,),

SizedBox(width: 10,),
                                Icon(Icons.arrow_drop_down,color: AppColors.mainColor,)

                              ],
                            ))
                      ],
                    ),
                  ),

                  const Divider(thickness: 2,height: 2,color: Color(0xf40A196CB),),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                    child: Row(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,children: [
                      Icon(Icons.logout,color: Color(0xffA196CB)),
                      SizedBox(width: 20,),
                      ReusableText(title: 'Logout',size: 18,weight: FontWeight.w500,color: Color(0xff000000),),

                    ],
                    ),
                  ),
                ],
              ),

            ),

          ],
        ),
      ),
    );
  }
}
