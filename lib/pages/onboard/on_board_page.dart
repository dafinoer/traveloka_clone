import 'package:easy_codebase/component/colors_app.dart';
import 'package:easy_codebase/pages/onboard/board_view.dart';
import 'package:easy_codebase/pages/onboard/bullet_indicator_widget.dart';
import 'package:easy_codebase/pages/onboard/button_next.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../component/routes.dart';
import '../../gen/assets.gen.dart';
import 'button_skip.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  static final route = Handler(
    handlerFunc: (context, parameters) {
      /// TODO call sharedpref for validate is user first install
      /// [true] if user is not fist install
      /// [false] user first install
      /// [null] user first install
      ///

      return const OnBoardPage();
    },
  );

  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  late final SwipeControl swipeControl;
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    swipeControl = SwipeControl.create(4);
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    swipeControl.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider.value(
        value: swipeControl,
        child: Column(
          children: [
            const SizedBox(height: kToolbarHeight, width: double.infinity),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) => swipeControl.onChangeIndex(value),
                children: [
                  BoardView(
                    title: 'More than a travel platform',
                    subTitle:
                        'Explore Activities near you with experience, and try out our rental and bus services',
                    asset: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Assets.images.campingOnboard.svg()),
                  ),
                  BoardView(
                    title: 'Picked with helpful feature',
                    subTitle:
                        'Online check-in and easy reschedule let you travel with ease',
                    asset: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: Assets.images.travelOnboard.svg(),
                    ),
                  ),
                  BoardView(
                      title: 'Never miss out deals',
                      subTitle: 'Enable push notification to get booking',
                      asset: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Assets.images.deviceOnboard.svg(),
                      ),
                      bottom: Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                      backgroundColor:
                                          const MaterialStatePropertyAll(
                                              ColorsApp.primaryColor),
                                      shape: MaterialStatePropertyAll(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0)))),
                                  child: const Text('Yes, enable it now')),
                            ),
                          ),
                        ),
                      )),
                  BoardView(
                    title: 'Unlock full member experience',
                    subTitle: 'Member can enjoy exclusive discount and redeem',
                    asset: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Assets.images.loginAsset.svg()),
                    bottom: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      elevation:
                                          const MaterialStatePropertyAll(0.0),
                                      backgroundColor: MaterialStatePropertyAll(
                                        Colors.grey[100],
                                      ),
                                      side: const MaterialStatePropertyAll(
                                          BorderSide(
                                              color: Colors.grey, width: 0.5)),
                                      shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                          color: ColorsApp.primaryColor),
                                    )),
                              )),
                              const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0)),
                              Expanded(
                                child: Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: ElevatedButton(
                                      style: const ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll<Color>(
                                                  ColorsApp.primaryColor)),
                                      onPressed: () {},
                                      child: const Text('Register'),
                                    )),
                              )
                            ],
                          ),
                          const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0)),
                          SizedBox(
                            width: double.infinity,
                            child: TextButton(
                              onPressed: () => EasyRouter.router.navigateTo(
                                  context, '/dashboard',
                                  replace: true),
                              child: const Text('Skip for now',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ButtonSkip(onSkip: () => pageController.jumpToPage(3)),
                const BulletIndicatorWidget(totalPageView: 4),
                ButtonNext(
                  onPressNext: () => pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SwipeControl extends ValueNotifier<int> {
  SwipeControl(super.value, {required this.totalPage});

  factory SwipeControl.create(int totalPage) =>
      SwipeControl(0, totalPage: totalPage);

  final int totalPage;

  void onChangeIndex(int index) {
    value = index;
  }
}
