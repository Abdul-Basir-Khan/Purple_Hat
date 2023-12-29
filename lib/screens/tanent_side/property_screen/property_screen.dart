import 'package:flutter/material.dart';
import 'package:purple_hats/screens/tanent_side/property_screen/constant/prop_container.dart';
import 'package:purple_hats/screens/tanent_side/property_screen/property_info.dart';

class PropertyScreen extends StatefulWidget {
  const PropertyScreen({super.key});

  @override
  State<PropertyScreen> createState() => _PropertyScreenState();
}

class _PropertyScreenState extends State<PropertyScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const PropertyInfo()));
            },
            child: const PropContainer(
              containerColor: Color(0xffF2F2F2),
              imgPath: 'assets/images/property/Rectangle 157.png',
              homeType1: 'PRU-24 ',
              homeType2: 'Shop',
              homeLoc: 'Lake View City',
              dueDate: 'Due Date: 20-01-23',
              homePrice: '25000',
              homeArea: '250 sq. Feet',
            ),
          ),
          const SizedBox(height: 10,),
          const PropContainer(
            containerColor: Color(0xffF2F2F2),
            imgPath: 'assets/images/property/Rectangle 157 (1).png',
            homeType1: 'PRU-31 ',
            homeType2: 'House',
            homeLoc: 'Bahria Town - Block D',
            dueDate: 'Due Date: 20-01-23',
            homePrice: '35000',
            homeArea: '23000 sq. Feet',
          ),
          const SizedBox(height: 10,),
          const PropContainer(
            containerColor: Color(0xffF2F2F2),
            imgPath: 'assets/images/property/Rectangle 157 (2).png',
            homeType1: 'PRU-57 ',
            homeType2: 'House',
            homeLoc: 'DHA - Phase 5',
            dueDate: 'Due Date: 20-01-23',
            homePrice: '1400000',
            homeArea: '250 sq. Feet',
          ),
          const SizedBox(height: 10,),
          const PropContainer(
            containerColor: Color(0xffF2F2F2),
            imgPath: 'assets/images/property/Rectangle 157 (3).png',
            homeType1: 'PRU-132 ',
            homeType2: 'Shop',
            homeLoc: 'EME - Sector 5',
            dueDate: 'Due Date: 20-01-23',
            homePrice: '25000',
            homeArea: '12000sq. Feet',
          ),
          const SizedBox(height: 10,),
          const PropContainer(
            containerColor: Color(0xffF2F2F2),
            imgPath: 'assets/images/property/Rectangle 157 (4).png',
            homeType1: 'PRU-74',
            homeType2: 'Shop',
            homeLoc: 'Model Town - Block K',
            dueDate: 'Due Date: 20-01-23',
            homePrice: '25000',
            homeArea: '13000 sq. Feet',
          ),
        ],
      ),
    );
  }
}
