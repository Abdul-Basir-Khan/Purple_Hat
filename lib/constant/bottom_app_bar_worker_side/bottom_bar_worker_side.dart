import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:purple_hats/constant/reusable_text/reusable_text.dart';
import 'package:purple_hats/screens/worker_agent_side/dashboard/dashboard_screen.dart';
import 'package:purple_hats/screens/worker_agent_side/leaves/leaves_screen.dart';
import 'package:purple_hats/themes/app_colors.dart';


class BottomNavigationAppBarWorkerSide extends StatefulWidget {
  @override
  _BottomNavigationAppBarWorkerSideState createState() =>
      _BottomNavigationAppBarWorkerSideState();
}

class _BottomNavigationAppBarWorkerSideState
    extends State<BottomNavigationAppBarWorkerSide> {
  int _currentIndex = 0;

  final List<Widget> _children = [
   const DashBoardScreen(),
    const LeavesScreen(),
    const SizedBox(),
    const SizedBox(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: _currentIndex == 0
              ? IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: AppColors.mainColor,
                  ),
                  onPressed: () {},
                ):_currentIndex == 1
              ? IconButton(
            icon: const Icon(
              Icons.menu,
              color: AppColors.mainColor,
            ),
            onPressed: () {},
          )
              : const SizedBox(),
          title: _currentIndex == 1
                  ? const ReusableText(
                      title: 'Purple Hats',
                      size: 18,
                      weight: FontWeight.w700,
                      color: AppColors.mainColor,
                    )
                  : _currentIndex == 0
                      ? const ReusableText(
                          title: 'Purple Hats',
                          size: 18,
                          weight: FontWeight.w700,
                          color: AppColors.mainColor,
                        )
                      :  const SizedBox(),
          actions: [
            _currentIndex == 1
                ?SvgPicture.asset(
              'assets/icons/bottombar_worker/messages.svg',
              color: AppColors.mainColor,
            )
                : _currentIndex == 0
                    ? SvgPicture.asset(
                        'assets/icons/bottombar_worker/messages.svg',
                        color: AppColors.mainColor,
                      )
                    : const SizedBox(),
            SizedBox(width: 10,),
          ],
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomAppBar(

          child: Padding(
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomTab(
                  onTap: () {
                    onTabTapped(0);
                  },
                  indicatorColor: _currentIndex == 0
                      ? AppColors.mainColor
                      : Colors.transparent,
                  title: 'Dashboard',
                  icon: 'assets/icons/bottombar_worker/Vector.svg',
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(1);
                  },
                  indicatorColor: _currentIndex == 1
                      ? AppColors.mainColor
                      : Colors.transparent,
                  title: 'Leaves',
                  icon: 'assets/icons/bottombar_worker/Vector (1).svg',
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(2);
                  },
                  indicatorColor: _currentIndex == 2
                      ? AppColors.mainColor
                      : Colors.transparent,
                  title: 'Notifications',
                  icon: 'assets/icons/bottombar_worker/Group.svg',
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(3);
                  },
                  indicatorColor: _currentIndex == 3
                      ? AppColors.mainColor
                      : Colors.transparent,
                  title: 'Tasks',
                  icon: 'assets/icons/bottombar_worker/Vector (2).svg',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BottomTab extends StatelessWidget {
  final String title;
  final Color indicatorColor;
  final String icon;
  final VoidCallback onTap;

  const BottomTab({
    super.key,
    required this.title,
    required this.indicatorColor,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(height: 2, width: 70, color: indicatorColor),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 30,
            width: 25,
            child: SvgPicture.asset(
              icon,
              color: AppColors.mainColor,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          ReusableText(
            title: title,
            size: 10,
            weight: FontWeight.w500,
            color: AppColors.mainColor,
          ),
        ],
      ),
    );
  }
}
