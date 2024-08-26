import 'package:flutter/material.dart';
import 'package:property_app/components/bookmark.dart';
import 'package:property_app/components/categories.dart';
import 'package:property_app/components/customHeading.dart';
import 'package:property_app/components/house.dart';
import 'package:property_app/screens/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.058,
                    left: constraints.maxWidth * 0.06,
                    right: constraints.maxWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(
                              fontSize: constraints.maxWidth * 0.035,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Los Angeles, CA',
                          style: TextStyle(
                              fontSize: constraints.maxWidth * 0.04,
                              color: const Color(0xFF0F2F44),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Bookmark(
                      width: constraints.maxWidth * 0.15,
                      height: constraints.maxHeight * 0.096, image: 'assets/icons/bookmark.png',
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.06,
                  top: constraints.maxHeight * 0.03,
                ),
                child: CustomHeading(
                  text: 'Discover Best\nSuitable Property',
                  fontSize: constraints.maxWidth * 0.08,
                  color: const Color(0xFF0F2F44),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.06,
                    top: constraints.maxHeight * 0.03,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Categories(
                          width: constraints.maxWidth * 0.3,
                          color: const Color(0xFF0F2F44),
                          constraints: constraints,
                          text: 'House',
                          color2: Colors.white,
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.03,
                        ),
                        Categories(
                          width: constraints.maxWidth * 0.37,
                          color: const Color.fromARGB(255, 245, 248, 255),
                          constraints: constraints,
                          text: 'Apartment',
                          color2: const Color(0xFF0E3146),
                        ),
                        SizedBox(
                          width: constraints.maxWidth * 0.03,
                        ),
                        Categories(
                          width: constraints.maxWidth * 0.3,
                          color: const Color.fromARGB(255, 245, 248, 255),
                          constraints: constraints,
                          text: 'Flot',
                          color2: const Color(0xFF0E3146),
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.06,
                  top: constraints.maxHeight * 0.04,
                ),
                child: Text(
                  'Best for you',
                  style: TextStyle(
                      color: const Color(0xFF0E3146),
                      fontWeight: FontWeight.w500,
                      fontSize: constraints.maxWidth * 0.05),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.06,
                    top: constraints.maxHeight * 0.01,
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailScreen()));
                      },
                      child: House(constraints: constraints))),
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.06,
                  top: constraints.maxHeight * 0.03,
                ),
                child: Text(
                  'Nearby your location',
                  style: TextStyle(
                      color: const Color(0xFF0E3146),
                      fontWeight: FontWeight.w500,
                      fontSize: constraints.maxWidth * 0.05),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.06,
                  top: constraints.maxHeight * 0.02,
                ),
                child: Container(
                  width: constraints.maxWidth * 0.9,
                  height: constraints.maxHeight * 0.18,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 245, 248, 255),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      SizedBox(
                        height: constraints.maxHeight * 0.18,
                        width: constraints.maxHeight * 0.15,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/houses/Ranch_Home.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: constraints.maxWidth * 0.04,
                          top: constraints.maxHeight * 0.03,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'RANCH HOME',
                              style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.04,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.007,
                            ),
                            Text(
                              '520 N Btoudry Ave Los Angeles',
                              style: TextStyle(
                                color: const Color(0xFF0F2F44),
                                fontSize: constraints.maxWidth * 0.034,
                              ),
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.007,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: constraints.maxHeight * 0.03,
                                  width: constraints.maxWidth * 0.05,
                                  child: Image.asset(
                                    'assets/icons/bed.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  '4 Beds',
                                  style: TextStyle(
                                      color: const Color(0xFF0F2F44),
                                      fontSize: constraints.maxWidth * 0.03),
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.03,
                                  width: constraints.maxWidth * 0.05,
                                  child: Image.asset(
                                    'assets/icons/bath.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  '4 Baths',
                                  style: TextStyle(
                                      color: const Color(0xFF0F2F44),
                                      fontSize: constraints.maxWidth * 0.03),
                                ),
                                SizedBox(
                                  height: constraints.maxHeight * 0.03,
                                  width: constraints.maxWidth * 0.05,
                                  child: Image.asset(
                                    'assets/icons/car.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  '1 Garage',
                                  style: TextStyle(
                                      color: const Color(0xFF0F2F44),
                                      fontSize: constraints.maxWidth * 0.03),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        );
      }),
    );
  }
}
