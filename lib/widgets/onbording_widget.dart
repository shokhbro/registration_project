import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:registration_project/page/start_page.dart';

class OnbordingWidget extends StatelessWidget {
  final String image;
  final bool isLastPage;
  final int pageIndex;
  final PageController pageController;

  OnbordingWidget({
    required this.image,
    this.isLastPage = false,
    required this.pageIndex,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Gap(150),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 320,
                height: 340,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey.shade200,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Image.asset(image),
                ),
              ),
            ],
          ),
          const Gap(30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.blue,
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.blue,
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 5,
                backgroundColor: Colors.blue,
              ),
            ],
          ),
          const Gap(30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Set Your Schedule",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Gap(10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Quickly see your upcoming event, tack,\n  conference calls, weather and more",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const Gap(30),
          InkWell(
            onTap: () {
              if (pageIndex == 2) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StartPape()));
              } else {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontFamily: "Rowdies",
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
