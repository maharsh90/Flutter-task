import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:march21task/resource/app_color.dart';

import 'model/activity.dart';

List<Activity> lstActivity = [
  Activity(AppColors.red, "Heart Rate", "124 bpm", "80-120 Healthy",
      Icons.heart_broken_rounded),
  Activity(AppColors.purple, "Sleep", "8 h 42m", "Deep Sleep 5 h 13 m",
      Icons.nights_stay),
  Activity(AppColors.orange, "Energy Burn", "583 kcal", "Daily Goal 900 kcal",
      Icons.local_fire_department_rounded),
  Activity(AppColors.blue, "Steps", "16,741", "Daily Goal 20,000 steps",
      Icons.ice_skating),
  Activity(AppColors.purple, "Running", "5,3 km", "Daily Goal 10 km",
      Icons.directions_boat),
  Activity(
      AppColors.green, "Cycling", "12,5 km", "Daily Goal 20 km", Icons.flag),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  void onPress(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> widgets = [
    Container(
      margin: const EdgeInsets.only(top: 10),
      child: GridView.builder(
        itemCount: lstActivity.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 180,
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: lstActivity[index].color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          lstActivity[index].title,
                          style: TextStyle(color: AppColors.white),
                        ),
                      ),
                      Container(
                        height: 60.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.r),
                          color: Colors.white60.withOpacity(0.2),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            lstActivity[index].icon,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: [
                      Text(
                        lstActivity[index].content,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 82.w,
                        child: Text(
                          maxLines: 2,
                          textDirection: TextDirection.rtl,
                          lstActivity[index].goal,
                          style: TextStyle(
                              overflow: TextOverflow.visible,
                              color: AppColors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    ),
    Container(
      child: const Text("sd"),
    ),
    Container(
      child: const Text("sd"),
    ),
  ];
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: widgets.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "STATS",
          style: TextStyle(color: Colors.purple),
        ),
        automaticallyImplyLeading: true,
        leading: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          height: 10.h,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Transform.scale(
            scale: 0.5,
            child: IconButton(
              style: IconButton.styleFrom(),
              color: Colors.deepPurple,
              padding: const EdgeInsets.all(0),
              onPressed: () {},
              icon: Icon(
                Icons.navigate_before,
                size: 40.sp,
              ),
            ),
          ),
        ),
        backgroundColor: AppColors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Container(
              height: 35.h,
              decoration: BoxDecoration(
                color: Colors.purple.shade50,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.deepPurple,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                controller: tabController,
                tabs: const [
                  Tab(
                    text: "Day",
                  ),
                  Tab(
                    text: "Week",
                  ),
                  Tab(
                    text: "Month",
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: widgets,
                controller: tabController,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 74.h,
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onPress,
          unselectedItemColor: Colors.grey.shade500,
          selectedItemColor: Colors.blueAccent.shade700,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.print),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded),
              label: "Stats",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.currency_bitcoin),
              label: "Rewards",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.task_alt_rounded),
              label: "Goals",
            ),
          ],
        ),
      ),
    );
  }
}
