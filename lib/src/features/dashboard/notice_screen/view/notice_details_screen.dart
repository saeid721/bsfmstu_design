import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../global/constants/colors_resources.dart';
import '../../../../global/widget/global_container.dart';
import '../../../../global/widget/global_sized_box.dart';
import '../../../../global/widget/global_text.dart';
import '../../../drawer/custom_drawer.dart';
import '../../dashboard/view/dashboard_screen.dart';
import 'components/notice_details_widget.dart';

class NoticeDetailsScreen extends StatefulWidget {
  final String date;
  final String title;
  final String details;
  const NoticeDetailsScreen({
    super.key,
    required this.date,
    required this.title,
    required this.details,
  });

  @override
  State<NoticeDetailsScreen> createState() => _NoticeDetailsScreenState();
}

class _NoticeDetailsScreenState extends State<NoticeDetailsScreen> {
  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  TextEditingController bookNameCon = TextEditingController();
  TextEditingController authorCon = TextEditingController();

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
              drawerKey.currentState!.isDrawerOpen ? drawerKey.currentState!.closeDrawer() : drawerKey.currentState!.openDrawer();
            },
          ),
          title: const GlobalText(
            str: 'Details',
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
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // NoticeDetailsWidget(
              //   title: widget.title,
              //   details: widget.details,
              //   date: widget.date,
              // ),
              NoticeDetailsWidget(
                title: "উদ্ভাবনী প্রদর্শনীতে অংশগ্রহনের নোটিশ, সকল শিক্ষার্থীদের জন্য।",
                text: """আবেদনের যোগ্যতা ও অভিজ্ঞতা
(১) সংশ্লিষ্ট বিভাগে ০৪ (চার) বছর মেয়াদি স্নাতক এবং স্নাতকোত্তর ডিগ্রি থাকতে হবে। (২) স্নাতক পরীক্ষায় সিজিপিএ ৪.০০-এর মধ্যে সিজিপিএ ন্যূনতম ৩.৫০ থাকতে হবে। (৩) শিক্ষাজীবনের সকল পর্যায়ে প্রথম বিভাগ/ শ্রেণি/ সমমানের সিজিপিএ থাকতে হবে।
সাধারণ শর্তাবলি:
১। আগ্রহী প্রার্থীগণকে ৮ (আট) সেট পরিপূর্ণ আবেদনপত্র আগামী ২৯/০২/২০২৪ খ্রি. তারিখের মধ্যে অফিস চলাকালীন সময়ে (সরকারী ছুটির দিন ব্যতীত সকাল ৯.০০ টা থেকে বিকাল ৪.০০ টা) বঙ্গমাতা শেখ ফজিলাতুন্নেছা মুজিব বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়, মেলান্দহ, জামালপুর-২০১২ এর ঠিকানায় রেজিস্টার্ড ডাকযোগে প্রেরণ করতে হবে। খামের উপর প্রার্থীত পদের নাম অবশ্যই উল্লেখ করতে হবে।
২। প্রার্থীদেরকে আবেদনপত্রের সাথে “রেজিস্ট্রার, বঙ্গমাতা শেখ ফজিলাতুন্নেছা মুজিব বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়”-এর অনুকূলে জনতা ব্যাংকের যে কোনো শাখা হতে ৮০০/- (আটশত) মূল্যের MICR পে-অর্ডার/ব্যাংক ড্রাফট (অফেরতযোগ্য) সংযুক্ত করতে হবে।
৩। আবেদনপত্র ও জীবনবৃত্তান্ত ছকের সঙ্গে নিম্নবর্ণিত কাগজপত্র সংযোজন করতে হবে:
(ক) সদ্য তোলা পাসপোর্ট সাইজের ৪ (চার) কপি সত্যায়িত ছবি ।
(খ) সকল পরীক্ষা পাসের সার্টিফিকেট ও ট্রান্সক্রিপ্ট-এর সত্যায়িত অনুলিপি ৷
(গ) অভিজ্ঞতার সনদ-এর সত্যায়িত অনুলিপি। (প্রযোজ্য ক্ষেত্রে)।
(ঘ) প্রকাশনা/প্রশিক্ষণ ইত্যাদি (প্রযোজ্য ক্ষেত্রে) এর সত্যায়িত অনুলিপি ।
(ঙ) জাতীয় পরিচয়পত্র/ জন্ম নিবন্ধনের সত্যায়িত অনুলিপি ।
(চ) ১০ (দশ) টাকা মূল্যের ডাক টিকিটসহ নিজ ঠিকানা উল্লেখপূর্বক ৯ ×৪” সাইজের ফেরত খাম (১টি)।
৪। চাকরিরত প্রার্থীদেরকে তাঁদের স্ব-স্ব নিয়োগকারী কর্তৃপক্ষের মাধ্যমে আবেদন করতে হবে। অগ্রিম আবেদনপত্র গ্রহণযোগ্য হবে না ।
৫। চাকরিরত কোনো প্রার্থীর ক্ষেত্রে বিভাগীয় মামলা থাকলে অথবা কোনো প্রার্থী ইতঃপূর্বে কোনো প্রতিষ্ঠান হতে চাকরিচ্যুত বা অপসারিত হয়ে থাকলে
অথবা কোনো প্রার্থী ফৌজদারী আইনে অভিযুক্ত বা সাজাপ্রাপ্ত হয়ে থাকলে তিনি আবেদন করার যোগ্য হবেন না ।
৬। অসম্পূর্ণ এবং স্বাক্ষরবিহীন আবেদনপত্র সরাসরি বাতিল বলে গণ্য হবে। স্ক্যানকৃত স্বাক্ষর গ্রহণযোগ্য নয় ।
৭। অভ্যন্তরীণ প্রার্থীদের ক্ষেত্রে বয়স ও শিক্ষাগত যোগ্যতার ক্ষেত্রে বিশ্ববিদ্যালয়ের ‘নিয়োগ ও পদোন্নয়ন নীতিমালা ২০২২' অনুসরণ করা হবে।
৮। শিক্ষাগত যোগ্যতার ক্ষেত্রে পরীক্ষার কোনো ধাপসহ অন্য কোনো তথ্য গোপন করা হলে সেক্ষেত্রে নিয়োগ বাতিলসহ উহা শাস্তিযোগ্য অপরাধ বলে গণ্য হবে।
৯। অতিরিক্ত যোগ্যতা, অভিজ্ঞতাসহ অন্যান্য তথ্যের জন্য পৃথক কাগজ ব্যবহার করা যাবে।
১০। বিদেশ হতে অর্জিত ডিগ্রির ক্ষেত্রে বিশ্ববিদ্যালয় মঞ্জুরী কমিশনের সমতা বিধানের সনদ থাকতে হবে ।
১১। বিশ্ববিদ্যালয় কর্তৃপক্ষ যে কোনো আবেদনপত্র গ্রহণ কিংবা বাতিল করার ক্ষমতা সংরক্ষণ করে।
১২ । এই নিয়োগ বিজ্ঞপ্তি প্রকাশের কারণে বিশ্ববিদ্যালয় কর্তৃপক্ষ আবেদনকারীর নিয়োগ পরীক্ষা গ্রহণ করতে বা তাকে প্রার্থিত পদে নিয়োগ প্রদান করতে বাধ্য থাকবে না ৷
১৩। অভিজ্ঞতা সম্পন্ন প্রার্থীদের ক্ষেত্রে পূর্বতন প্রতিষ্ঠানের অভিজ্ঞতা বিশ্ববিদ্যালয় কর্তৃক প্রণীত নীতিমালা অনুযায়ী গণনা করা হবে।
১৪। প্রার্থীদের নিয়োগ পরীক্ষায় অংশগ্রহণের জন্য কোনো টিএ/ডিএ প্রদান করা হবে না ।

(সৈয়দ ফারুক হোসেন) রেজিস্ট্রার
বঙ্গমাতা শেখ ফজিলাতুন্নেছা মুজিব বিজ্ঞান ও প্রযুক্তি বিশ্ববিদ্যালয়
""",
                date: widget.date,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
