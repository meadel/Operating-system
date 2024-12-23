import 'package:flutter/material.dart';
import 'package:operating_sys/addition/employee_registration.dart';
import 'package:operating_sys/core/utlis/app_images.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});
  static const routeName = "favoritescreen";
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
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, EmployeeRegistration.routeName);
                      },
                      title: Image.asset(
                        Assets.imagesEmployees,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "أضافة موظف",
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
                        Assets.imagesClient,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "أضافة عميل",
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
                        Assets.imagesSav,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "أضافة مستودع",
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
                        Assets.imagesCar,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "أضافة سيارة",
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
            // ROW 3==========================================================
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
                        Assets.imagesOrg,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "أصول الشركة",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
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
