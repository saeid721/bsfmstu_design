import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../global/constants/colors_resources.dart';
import '../../../../../global/widget/global_container.dart';
import '../../../../../global/widget/global_sized_box.dart';
import '../../../../../global/widget/global_text.dart';
import '../../../../drawer/custom_drawer.dart';
import '../../../dashboard/view/dashboard_screen.dart';
import '../model/directory_model.dart';
import 'components/directory_category_widget.dart';

class DirectoryScreen extends StatefulWidget {
  const DirectoryScreen({super.key});

  @override
  State<DirectoryScreen> createState() => _DirectoryScreenState();
}

class _DirectoryScreenState extends State<DirectoryScreen> {
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
              if (drawerKey.currentState!.isDrawerOpen) {
                drawerKey.currentState!.closeDrawer();
              } else {
                drawerKey.currentState!.openDrawer();
              }
            },
          ),
          title: const GlobalText(
            str: 'BSFMSTU Directory',
            color: ColorRes.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
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
      body: SafeArea(
        child: GlobalContainer(
          height: size(context).height,
          width: size(context).width,
          color: Colors.white,
          child: Column(
            children: [
              sizedBoxH(5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  itemCount: directoryItems.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.7,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (ctx, index) {
                    final item = directoryItems[index];
                    return DirectoryCategoryWidget(
                      title: item.title,
                      imagePath: item.imagePath,
                      onTap: item.onTap,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
