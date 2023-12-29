import 'package:flutter/material.dart';
import 'package:purple_hats/screens/tanent_side/maintenance_services/constant/maintenance_container.dart';
import 'package:purple_hats/screens/tanent_side/maintenance_services/request_maintenance.dart';
import 'package:purple_hats/themes/app_colors.dart';

import '../../../constant/reusable_text/reusable_text.dart';
import '../property_screen/constant/prop_container.dart';

class MaintenanceServiceScreen extends StatelessWidget {
  const MaintenanceServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.mainColor,
            ),
          ),
          title: const ReusableText(
            title: 'Maintenance Services',
            size: 18,
            weight: FontWeight.w700,
            color: AppColors.mainColor,
          ),
          actions: [
            const Row(
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
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){

               Navigator.push(context, MaterialPageRoute(builder: (context)=> const RequestMaintenance()  ));
                },
                child: const MaintenanceContainer(
                  price: 'EDU-17',
                  problem: 'Window Repairs',
                  statusColor: Color(0xff00B33D),
                  time: '9:10 AM',
                  status: 'Accepted',
                  containerColor: Color(0xf1000B33D),
                  date: 'Thursday, June 2, 2019',
                ),
              ),
              const SizedBox(height: 10,),
              const MaintenanceContainer(
                price: 'EDU-18',
                problem: 'Toilet Maintenance',
                statusColor: Color(0xffBE0C0C),
                time: '9:10 AM',
                status: 'Regected',
                containerColor: Color(0xf10BE0C0C),
                date: 'Thursday, June 2, 2019',
              ),
              const SizedBox(height: 10,),
              MaintenanceContainer(
                price: 'EDU-17',
                problem: 'Fix water leak in kitchen',
                statusColor:AppColors.mainColor,
                time: '9:10 AM',
                status: 'Requested',
                containerColor: AppColors.mainColor.withOpacity(0.10),
                date: 'Thursday, June 2, 2019',
              ),
              const SizedBox(height: 10,),
              const MaintenanceContainer(
                price: 'EDU-17',
                problem: 'AC Maintenance',
                statusColor: Color(0xffE2B820),
                time: '9:10 AM',
                status: 'Started',
                containerColor: Color(0xf10E2B820),
                date: 'Thursday, June 2, 2019',
              ),
              const SizedBox(height: 10,),
              const MaintenanceContainer(
                price: 'EDU-17',
                problem: 'Electric problem',
                statusColor: Color(0xff1CCBF3),
                time: '9:10 AM',
                status: 'Completed',
                containerColor: Color(0xf101CCBF3),
                date: 'Thursday, June 2, 2019',
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
