import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../global/constants/colors_resources.dart';
import '../../../../global/widget/global_container.dart';
import '../../../../global/widget/global_sized_box.dart';
import '../../../../global/widget/global_text.dart';
import '../../../drawer/custom_drawer.dart';
import '../../dashboard/view/dashboard_screen.dart';
import '../model/events_model.dart';
import 'components/events_widget.dart';

class EventsCategoryOthersScreen extends StatefulWidget {
  final String title;

  const EventsCategoryOthersScreen({
    super.key,
    required this.title,
  });

  @override
  State<EventsCategoryOthersScreen> createState() => _EventsCategoryOthersScreenState();
}

class _EventsCategoryOthersScreenState extends State<EventsCategoryOthersScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerKey,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: ColorRes.primaryColor,
          automaticallyImplyLeading: false,
          leading: IconButton(
            splashRadius: 0.1,
            icon: const Icon(Icons.menu, color: ColorRes.white, size: 22),
            onPressed: () {
              drawerKey.currentState!.isDrawerOpen
                  ? drawerKey.currentState!.closeDrawer()
                  : drawerKey.currentState!.openDrawer();
            },
          ),
          title: GlobalText(
            str: widget.title,
            color: ColorRes.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
            fontFamily: 'Rubik',
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(() => const DashboardScreen());
              },
              child: const Icon(Icons.home, color: ColorRes.white, size: 25),
            ),
            sizedBoxW(15),
          ],
        ),
      ),
      drawer: const CustomDrawer(),
      body: GlobalContainer(
        height: size(context).height,
        width: size(context).width,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: eventsModel.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  final events = eventsModel[index];
                  return EventsWidget(
                    startDate: events.startDate,
                    endDate: events.endDate,
                    title: events.title,
                    imagePath: events.imagePath,
                    details: events.details,
                    onTap: events.onTap,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
