import 'package:bank_app/theme/font_style.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    int selectedIndex = 0;
    int undex = 3;
    SwiperController _controller = SwiperController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.zero,
                  width: double.infinity,
                  height: 450,
                  child: Swiper(
                    indicatorLayout: PageIndicatorLayout.NONE,
                    // pagination: const SwiperPagination(
                    //   margin: EdgeInsets.all(5.0),
                    //   builder: DotSwiperPaginationBuilder(
                    //       color: Color.fromRGBO(0, 102, 255, 0.2),
                    //       activeColor: Color(0XFF0066FF),
                    //       size: 8.0,
                    //       activeSize: 10.0),
                    // ),
                    itemCount: 3,
                    controller: _controller,
                    itemWidth: double.infinity,
                    itemHeight: 266,
                    itemBuilder: (_, undex) => Column(
                      children: [
                        // Text('${students[undex].name}'),
                        _welcomeAnimation(image: students[undex].image, title: students[undex].title, subtitle: students[undex].subtitle),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (() => _controller.next()),
                      child: Text('Next')),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _welcomeAnimation extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const _welcomeAnimation({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInImage(
          height: 266,
          placeholder: const AssetImage('lib/assets/img/no-image.jpg'),
          image: AssetImage(image),
        ),
        const SizedBox(
          height: 36,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 312),
          child: Text(title,
              textAlign: TextAlign.center,
              style: CustomTextStyle.heading3,
              overflow: TextOverflow.ellipsis,
              maxLines: 2),
        ),
        const SizedBox(
          height: 12,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 281),
          child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: CustomTextStyle.subtitle4,
              overflow: TextOverflow.ellipsis,
              maxLines: 2),
        ),
      ],
    );
  }
}

class Student {
  String image;
  String title;
  String subtitle;

  Student({required this.image, required this.title, required this.subtitle});
}

List<Student> students = [
  Student(
      image: "lib/assets/img/welcome_one.png",
      title: 'Fastest Payment in the world',
      subtitle:
          'Integrate multiple payment methoods to help you up the process quickly'),
  Student(
      image: "lib/assets/img/welcome_two.png",
      title: 'The most Secoure Platfrom for Customer',
      subtitle:
          'Built-in Fingerprint, face recognition and more, keeping you completely safe'),
  Student(
      image: "lib/assets/img/welcome_three.png",
      title: 'Paying for Everything is Easy and Convenient',
      subtitle:
          'Built-in Fingerprint, face recognition and more, keeping you completely safe')
];
