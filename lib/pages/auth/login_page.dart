import 'package:deliver/pages/auth/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:deliver/widgets/big_text.dart';
import 'package:deliver/utils/colors.dart';
import 'package:deliver/utils/dimensions.dart';
import 'package:deliver/widgets/app_text_field.dart';
import 'package:deliver/base/show_custom_snackbar.dart';
import 'package:deliver/base/loading.dart';

class LoginPage extends StatefulWidget {
	const LoginPage({Key? key}): super(key: key);

	@override
	State<LoginPage> createState() => _SignUpPage();

}
class _SignUpPage extends State<LoginPage> {


	@override
	bool loading = false;
	Widget build(BuildContext context) {
		var nameController = TextEditingController();
		var emailController = TextEditingController();
		var phoneController = TextEditingController();
		var signUpImages = [
		"t.png",
		"f.png",
		"g.png",
		];

		_registeration() {
			String phone = phoneController.text.trim();

			// For name make only numbers
			// For phone make sure phone format valid
			//
		
			if(phone.isEmpty){
			showCustomSnackBar("Type in your phone number",title: "Phone Number");
			}else if(phone.length != 13){
			showCustomSnackBar("Type in a valid phone numb, +233547642841",title: "Valid phone number");
			}else{
					//connect to firebase auth
					return 1;
			}
		}

		return loading ? Loading() : Scaffold(
			backgroundColor: Color(0xFF24252A),
			body: SingleChildScrollView(
				physics: BouncingScrollPhysics(),
				child: Column(
				children: [
				SizedBox(height: Dimensions.screenHeight*0.05,),
				Container(
					height: Dimensions.screenHeight*0.25,
					child: Center(
						child: CircleAvatar(
						backgroundColor: Color(0xFF24252A),
						radius: 80,
						backgroundImage: AssetImage(
							"image/download.png"
							),
						),
					),
					),
				Container(
					margin: EdgeInsets.only(left: Dimensions.width20),
					width: double.maxFinite,
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
						Text(
							"Login",
							style: TextStyle(
								fontSize: Dimensions.font20*3+Dimensions.font20/2,
								fontWeight: FontWeight.bold,
                color: Colors.grey,
								),
							),
						Text(
							"Enter your phone number to login",
							style: TextStyle(
								fontSize: Dimensions.font20,
								color: Colors.grey[500],
								),
							)
							],
							)
					),

				SizedBox(height: Dimensions.height20,),
				AppTextField(textController: phoneController,
					hintText: "Phone",
					icon: Icons.phone,
					type: TextInputType.number,),
				SizedBox(height: Dimensions.height20,),
				SizedBox(height: Dimensions.height20,),
				GestureDetector(
					onTap: () async {
						var temp = _registeration();
											// 	if (temp == 1){
                      //   setState(() => loading = true);
                      //   // dynamic result = await authController.register(
                      //   //     phoneController.text.trim());
                      //   if (result.runtimeType == ConfirmationResult){
                      //   	setState(() => loading = false);
                      //   Get.toNamed(RouteHelper.getOtpPage(), arguments: [result, phoneController.text.trim()]);
                      //   setState(() => loading = false);

                      //   }
                      //   if (result == null) {
                      //     setState(() => loading = false);
                  		// 		showCustomSnackBar("Could not register. Try again", title: "Invalid OTP"); 

                      //   }
                      // }else{
                      // 	return null;
                      // }
                      },
					child: 
				Container(
					width: Dimensions.screenWidth/2,
					height: Dimensions.screenHeight/13,
					decoration: BoxDecoration(
						borderRadius: BorderRadius.circular(Dimensions.radius30),
						color: AppColors.mainColor
						),
					child: Center(
						child: BigText(
						text: "Login",
						size: Dimensions.font20 + Dimensions.font20/2,
						color: Color.fromARGB(255, 32, 30, 30),
						),
					),
					),
				),
               ElevatedButton(
          child: const Text('Don\'t have an account, sign in here'),
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
                }
        ),
				SizedBox(height: Dimensions.height10,),
				// RichText(
				// 	text: TextSpan(
				// 		recognizer: TapGestureRecognizer()..onTap=()=>Get.toNamed(RouteHelper.getSignInPage()),
				// 		text: "Have an account already?",
				// 		style: TextStyle(
				// 			color: Colors.grey[500],
				// 			fontSize: Dimensions.font20,
				// 			),
				// 		),
				// 	),
				
				],
				),
        
		),
    
		);


		
	}
}
