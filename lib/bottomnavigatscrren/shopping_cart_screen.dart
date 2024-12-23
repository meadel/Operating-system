import 'package:flutter/material.dart';
import 'package:operating_sys/core/utlis/app_images.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(0),
                    height: 150,
                    width: 150,
                    child: ListTile(
                      title: Image.asset(
                        Assets.imagesCarMaintenance,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "مصروفات سيارات",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0),
                    height: 150,
                    width: 150,
                    child: ListTile(
                      title: Image.asset(
                        Assets.imagesCompanyXpenses,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "مصروفات الفروع",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ROW 2======================================================
            Container(
              padding: const EdgeInsets.all(20.0),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(0),
                    height: 150,
                    width: 150,
                    child: ListTile(
                      title: Image.asset(
                        Assets.imagesOtherExpenses,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "مصروفات أخرى",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  //       Container(
                  //         height: 150,
                  //         width: 150,
                  //         child: ListTile(
                  //           title: Image.asset(
                  //             Assets.imagesCar,
                  //             width: 100,
                  //             height: 100,
                  //           ),
                  //           subtitle: Container(
                  //             child: const Text(
                  //               "أضافة سيارة",
                  //               style: TextStyle(
                  //                 fontSize: 20.0,
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //               textAlign: TextAlign.center,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // // ROW 3==========================================================
                  // Container(
                  //   padding: const EdgeInsets.all(20.0),
                  //   height: 200,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: <Widget>[
                  //       Container(
                  //         height: 150,
                  //         width: 150,
                  //         child: ListTile(
                  //           title: Image.asset(
                  //             Assets.imagesOrg,
                  //             width: 100,
                  //             height: 100,
                  //           ),
                  //           subtitle: Container(
                  //             child: const Text(
                  //               "أصول الشركة",
                  //               style: TextStyle(
                  //                 fontSize: 20.0,
                  //                 fontWeight: FontWeight.bold,
                  //               ),
                  //               textAlign: TextAlign.center,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  // Container(
                  //   height: 150,
                  //   width: 150,
                  //   child: ListTile(
                  //     title: Image.asset(
                  //       Assets.imagesOffers2,
                  //       width: 100,
                  //       height: 100,
                  //     ),
                  //     subtitle: Container(
                  //       child: const Text(
                  //         "لوحة البيانات",
                  //         style: TextStyle(
                  //           fontSize: 19.0,
                  //           fontWeight: FontWeight.bold,
                  //         ),
                  //         textAlign: TextAlign.center,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
