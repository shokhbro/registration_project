import 'package:flutter/material.dart';
import 'package:registration_project/widgets/onbording_widget.dart';

class OnbordingPage extends StatefulWidget {
  @override
  State<OnbordingPage> createState() => OnbordingPageState();
}

class OnbordingPageState extends State<OnbordingPage> {
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (int page) {
          setState(() {
            currentPage = page;
          });
        },
        children: [
          OnbordingWidget(
            image: 'assets/images/phone1.png',
            pageIndex: 0,
            isLastPage: currentPage == 0,
            pageController: pageController,
          ),
          OnbordingWidget(
            image: 'assets/images/kalendar.png',
            pageIndex: 1,
            isLastPage: currentPage == 1,
            pageController: pageController,
          ),
          OnbordingWidget(
            image: 'assets/images/message.png',
            pageIndex: 2,
            isLastPage: currentPage == 2,
            pageController: pageController,
          ),
        ],
      ),
    );
  }
}
