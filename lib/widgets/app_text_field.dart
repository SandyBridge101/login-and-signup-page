
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:deliver/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:deliver/widgets/app_icon.dart';
import 'package:deliver/widgets/big_text.dart';
import 'package:deliver/widgets/expandable_text_widget.dart';
import 'package:deliver/utils/colors.dart';
import 'package:deliver/utils/dimensions.dart';
import 'package:get/get.dart';
import 'package:deliver/routes/route_helper.dart';
import 'package:deliver/pages/auth/sign_up_page.dart';
import 'package:flutter/services.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;
  String inputFormat;
  TextCapitalization textCap;
  TextInputType? type;
  AppTextField(
      {Key? key,
      required this.textController,
      required this.hintText,
      this.type = TextInputType.text,
      this.textCap = TextCapitalization.words,
      this.inputFormat = r"[0-9a-zA-Z. @]+",
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimensions.height20,
        right: Dimensions.height20,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 7,
              offset: Offset(1, 10),
              color: Colors.grey.withOpacity(0.2),
            )
          ]),
      child: TextField(
        controller: textController,
        keyboardType: type,
        textCapitalization : textCap,
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp(inputFormat))],
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(icon, color: AppColors.yellowColor),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              borderSide: BorderSide(
                width: 1.0,
                color: Colors.white,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              borderSide: BorderSide(
                width: 1.0,
                color: Colors.white,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius30),
          ),
        ),
      ),
    );
  }
}
