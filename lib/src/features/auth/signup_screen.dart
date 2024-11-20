
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../global/constants/input_decoration.dart';
import '../../global/widget/global_appbar.dart';
import '../../global/widget/global_bottom_widget.dart';
import '../../global/widget/global_compress_image.dart';
import '../../global/widget/global_container.dart';
import '../../global/widget/global_couple_text_button.dart';
import '../../global/widget/global_drop_down_formfield.dart';
import '../../global/widget/global_sized_box.dart';
import '../../global/widget/global_textform_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController nameCon = TextEditingController();
  TextEditingController emailCon = TextEditingController();
  TextEditingController passCon = TextEditingController();
  TextEditingController conPassCon = TextEditingController();

  String role = 'Select One';

  XFile? selectedImage; // Change to single XFile variable

  Future compressImage(XFile image) async {
    final compressedImage = await compressImageMb(image, 2);
    log("main image ${(await image.length()) / 1000000}");

    if(compressedImage != null){
      log("compressed  ${(await compressedImage.length()) / 1000000}");
      log("compressed image ${(await compressedImage.length()) / 1000000}");

      setState(() {
        selectedImage = compressedImage;
      });
    } else{
      // showToast('Please pick another image!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: GlobalAppbarWidget(
              title: 'Registration',
            )),
        body: GlobalContainer(
          height: size(context).height,
          width: size(context).width,
          color: Colors.white,
          child: SafeArea(
            child: Form(
              key: formKey,
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overScroll) {
                  overScroll.disallowIndicator();
                  return true;
                },
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        sizedBoxH(30),
                        GlobalTextFormField(
                          controller: nameCon,
                          titleText: 'Name',
                          hintText: 'Enter Your Name',
                          decoration: borderDecoration,
                          isDense: true,
                        ),

                        sizedBoxH(10),
                        GlobalTextFormField(
                          controller: emailCon,
                          titleText: 'Email',
                          hintText: 'Enter Your Email',
                          decoration: borderDecoration,
                          isDense: true,
                        ),

                        sizedBoxH(10),
                        GlobalTextFormField(
                          controller: passCon,
                          titleText: 'Password',
                          hintText: 'Enter Your Password',
                          decoration: borderDecoration,
                          isDense: true,
                          isPasswordField: true,
                        ),

                        sizedBoxH(10),
                        GlobalTextFormField(
                          controller: conPassCon,
                          titleText: 'Confirm Password',
                          hintText: 'Enter Your Password',
                          decoration: borderDecoration,
                          isDense: true,
                          isPasswordField: true,
                        ),

                        sizedBoxH(10),
                        GlobalDropDownFormField(
                            value: role,
                            titleText: "Supplier",
                            hintText: "Select an Option",
                            decoration: borderDecoration,
                            isDense: true,
                            items: const [
                              "Select One",
                              "Student",
                              "Teacher",
                              "Other",
                            ],
                            sufixIcon: const Icon(Icons.keyboard_arrow_down_sharp),
                            onChanged: (val){
                              setState(() {
                                role = val!;
                              });
                              log("Role: $role");
                            }
                        ),

                        sizedBoxH(20),
                        GlobalButtonWidget(
                            str: 'Register',
                            height: 45,
                            onTap: () async{}
                        ),

                        sizedBoxH(20),
                        GestureDetector(
                          onTap: () {

                          },
                          child: const Align(
                            alignment: Alignment.center,
                            child: CoupleTextButton(
                                firstText: "Have a account? ",
                                secondText: "LogIn"),
                          ),
                        ),

                        sizedBoxH(20)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
