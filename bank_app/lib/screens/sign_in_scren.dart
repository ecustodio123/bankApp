import 'package:bank_app/theme/font_style.dart';
import 'package:bank_app/widgets/widgets.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    bool passIcon = true;

    return Scaffold(
      appBar: AppBar(
        // title: const Text('Luxary Shoes'),
        foregroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Container(
              height: 42,
              width: 42,
              decoration: const BoxDecoration(
                  color: Color(0XFFF4F4F4),
                  borderRadius: BorderRadius.all(Radius.circular(21))),
              child: const Icon(
                Icons.arrow_back_ios_new,
              )),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Container(
        //         height: 42,
        //         width: 42,
        //         decoration: const BoxDecoration(
        //             color: Color(0XFFF4F4F4),
        //             borderRadius: BorderRadius.all(Radius.circular(21))),
        //         child: const Icon(
        //           Icons.shopping_bag_outlined,
        //         )),
        //   ),
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Sign in',
              style: CustomTextStyle.heading2,
            ),
            const InputFieldIcon(
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Icons.email_outlined,
                labelInput: 'Email Address',
                formProperty: 'email'),
            InputFieldIcon(
                obscureText: passIcon,
                prefixIcon: Icons.lock_outline,
                suffixIcon: Icons.remove_red_eye_outlined,
                labelInput: 'Password',
                formProperty: 'email'),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Sign In'))),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'I’m a new user.',
                  style: CustomTextStyle.subtitle4,
                ), Text(' Sign Up', style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600, fontSize: 14, color: Color(0XFF0066FF)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
