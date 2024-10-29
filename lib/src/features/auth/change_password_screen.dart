
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../global/constants/input_decoration.dart';
import '../../global/widget/global_appbar.dart';
import '../../global/widget/global_bottom_widget.dart';
import '../../global/widget/global_container.dart';
import '../../global/widget/global_sized_box.dart';
import '../../global/widget/global_textform_field.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController confirmPasswordCon = TextEditingController();
  TextEditingController newPasswordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: GlobalAppbarWidget(
            title: 'Change Password',
          )),
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

                      sizedBoxH(10),
                      GlobalTextFormField(
                        controller: newPasswordCon,
                        titleText: 'New Password',
                        hintText: 'Enter Your New Password',
                        decoration: borderDecoration,
                        isDense: true,
                        isPasswordField: true,
                      ),

                      sizedBoxH(10),
                      GlobalTextFormField(
                        controller: confirmPasswordCon,
                        titleText: 'Confirm Password',
                        hintText: 'Enter Your New Password',
                        decoration: borderDecoration,
                        isDense: true,
                        isPasswordField: true,
                      ),

                      sizedBoxH(40),
                      GlobalButtonWidget(
                          str: 'CHANGE',
                          height: 45,
                          onTap: (){

                          }
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
