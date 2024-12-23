import 'package:flutter/material.dart';
import 'package:operating_sys/core/utlis/app_images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                        Assets.imagesProducts,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "مبيعات",
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
                        Assets.imagesOffers,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "نقطة البيع",
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
                          "المخزون",
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
                        Assets.imagesRbm,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "تصنيع",
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
                        Assets.imagesWrw,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "فواتير",
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
                        Assets.imagesOffers2,
                        width: 100,
                        height: 100,
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "لوحة البيانات",
                          style: TextStyle(
                            fontSize: 19.0,
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
          ],
        ),
      ),
    );
  }
}
