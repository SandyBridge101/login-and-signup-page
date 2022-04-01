import 'package:deliver/utils/colors.dart';
import 'package:deliver/widgets/big_text.dart';
import 'package:deliver/widgets/small_text.dart';
import 'package:deliver/widgets/app_icon.dart';
import 'package:deliver/widgets/icon_and_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:deliver/utils/dimensions.dart';


class AppColumn extends StatelessWidget {
	final String text;

	const AppColumn({Key? key, required this.text}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: text, size: Dimensions.font26,),
                      SizedBox(
                        height: Dimensions.height10,
                       ),
                      Row(
                        children: [
                          Wrap(
                              children: List.generate(5, (index) {
                            return Icon(Icons.star,
                                color: AppColors.mainColor, size: Dimensions.width15);
                          })),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "4.5"),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "1287"),
                          SizedBox(
                            width: 10,
                          ),
                          SmallText(text: "Comments"),
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconAndTextWidget(
                              icon: Icons.circle_sharp,
                              text: "Normal",
                              iconColor: AppColors.iconColor1),
                          IconAndTextWidget(
                              icon: Icons.location_on,
                              text: "1.7km",
                              iconColor: AppColors.iconColor1),
                          IconAndTextWidget(
                              icon: Icons.access_time_rounded,
                              text: "32min",
                              iconColor: AppColors.iconColor1),
                        ],
                      )
                    ],
		);
	}
}
