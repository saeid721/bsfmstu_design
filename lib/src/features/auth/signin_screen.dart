
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/images.dart';
import '../../global/constants/input_decoration.dart';
import '../../global/widget/global_bottom_widget.dart';
import '../../global/widget/global_container.dart';
import '../../global/widget/global_couple_text_button.dart';
import '../../global/widget/global_image_loader.dart';
import '../../global/widget/global_sized_box.dart';
import '../../global/widget/global_textform_field.dart';
import 'signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailCon = TextEditingController(text: "md.rakib3248@gmail.com");
  TextEditingController passCon = TextEditingController(text: "12345");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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

                        sizedBoxH(40),
                        const Center(
                          child: GlobalImageLoader(
                            imagePath: Images.appLogo,
                            height: 150,
                            width: 150,
                            fit: BoxFit.fill,
                          ),
                        ),

                        sizedBoxH(20),
                        GlobalTextFormField(
                          controller: emailCon,
                          titleText: 'Email',
                          hintText: 'Enter Your Email',
                          decoration: borderDecoration,
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

                        sizedBoxH(20),
                        GlobalButtonWidget(
                            str: 'Sign In',
                            height: 45,
                            onTap: (){

                            }
                        ),

                        sizedBoxH(20),
                        GestureDetector(
                          onTap: () {
                            Get.to(()=> const SignUpScreen());
                          },
                          child: const Align(
                            alignment: Alignment.center,
                            child: CoupleTextButton(
                                firstText: "Don't have and any account? ",
                                secondText: "Registration"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
