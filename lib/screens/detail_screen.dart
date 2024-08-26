import 'package:flutter/material.dart';
import 'package:property_app/components/bookmark.dart';
import 'package:property_app/components/customGallery.dart';
import 'package:property_app/components/customHeading.dart';
import 'package:property_app/components/house.dart';
import 'package:property_app/screens/wishlistScreen/wishList_screen.dart';
import 'package:property_app/screens/wishlistScreen/wishlist.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  void addItem(BoxConstraints constraints) {
    setState(() {
      wishlist.add(House(
        constraints: constraints,
      ));
    });
  }

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
                      CustomHeading(
                          text: 'Detail',
                          fontSize: constraints.maxWidth * 0.075,
                          color: const Color(0xFF0F2F44)),
                      Bookmark(
                        width: constraints.maxWidth * 0.15,
                        height: constraints.maxHeight * 0.09,
                        image: 'assets/icons/Arrow_Left.png',
                      )
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: constraints.maxHeight * 0.058,
                    left: constraints.maxWidth * 0.06,
                    right: constraints.maxWidth * 0.05),
                child: Container(
                  width: constraints.maxWidth * 0.9,
                  height: constraints.maxHeight * 0.5,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(22)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Image.asset(
                      'assets/houses/house2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: constraints.maxWidth * 0.06,
                          top: constraints.maxHeight * 0.03,
                        ),
                        child: Text(
                          'CRAFTSMAN HOUSE',
                          style: TextStyle(
                              color: Color(0xFF0F2F44),
                              fontSize: constraints.maxWidth * 0.055,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: constraints.maxWidth * 0.06,
                        ),
                        child: Text(
                          '520 N Btoudry Ave Los Angeles',
                          style: TextStyle(
                              color: const Color(0xFF0F2F44),
                              fontSize: constraints.maxWidth * 0.04),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: constraints.maxHeight * 0.04,
                      right: constraints.maxWidth * 0.05,
                    ),
                    child: InkWell(
                      onTap: () {
                        addItem(constraints);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WishlistScreen()));
                      },
                      child: Bookmark(
                        width: constraints.maxWidth * 0.15,
                        height: constraints.maxHeight * 0.09,
                        image: 'assets/icons/bookmark.png',
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.02,
                  right: constraints.maxWidth * 0.05,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * 0.05,
                      width: constraints.maxWidth * 0.07,
                      child: Image.asset(
                        'assets/icons/bed.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      '4 Beds',
                      style: TextStyle(
                          color: Color(0xFF0F2F44).withOpacity(0.5),
                          fontSize: constraints.maxWidth * 0.04),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.045,
                      width: constraints.maxWidth * 0.065,
                      child: Image.asset(
                        'assets/icons/bath.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      '4 Baths',
                      style: TextStyle(
                          color: Color(0xFF0F2F44).withOpacity(0.5),
                          fontSize: constraints.maxWidth * 0.04),
                    ),
                    SizedBox(
                      height: constraints.maxHeight * 0.045,
                      width: constraints.maxWidth * 0.065,
                      child: Image.asset(
                        'assets/icons/car.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      '1 Garage',
                      style: TextStyle(
                          color: Color(0xFF0F2F44).withOpacity(0.5),
                          fontSize: constraints.maxWidth * 0.04),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.06,
                    right: constraints.maxWidth * 0.04,
                    top: constraints.maxHeight * 0.03),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/logo/profile.png'),
                      radius: 37,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: constraints.maxWidth * 0.03,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rebecca Tetha',
                            style: TextStyle(
                                color: Color(0xFF0F2F44),
                                fontWeight: FontWeight.w600,
                                fontSize: constraints.maxWidth * 0.045),
                          ),
                          Text(
                            'Owner Craftsman House',
                            style: TextStyle(
                                color: Color(0xFF0F2F44).withOpacity(0.5),
                                fontWeight: FontWeight.w600,
                                fontSize: constraints.maxWidth * 0.03),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.098,
                    ),
                    Container(
                      height: constraints.maxHeight * 0.06,
                      width: constraints.maxWidth * 0.22,
                      decoration: BoxDecoration(
                          color: const Color(0xFF103144),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/icons/call.png'),
                          Text(
                            'Call',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: constraints.maxWidth * 0.045),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: constraints.maxWidth * 0.06,
                    right: constraints.maxWidth * 0.05,
                    top: constraints.maxHeight * 0.02),
                child: Text(
                  'Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1\n garahe. amazing curb oppeal and enterain areawater\n vews. Tons of built-ins & extras. Read More',
                  style: TextStyle(
                      color: const Color(0xFF0F2F44),
                      fontSize: constraints.maxWidth * 0.034),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.06,
                  top: constraints.maxHeight * 0.03,
                ),
                child: Text(
                  'Gallery',
                  style: TextStyle(
                      color: const Color(0xFF0F2F44),
                      fontSize: constraints.maxWidth * 0.047,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.06,
                  right: constraints.maxWidth * 0.06,
                  top: constraints.maxHeight * 0.015,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomGallery(
                          constraints: constraints,
                          image: 'assets/gallery/BoxImage1.png'),
                      SizedBox(
                        width: constraints.maxWidth * 0.04,
                      ),
                      CustomGallery(
                          constraints: constraints,
                          image: 'assets/gallery/BoxImage2.png'),
                      SizedBox(
                        width: constraints.maxWidth * 0.04,
                      ),
                      CustomGallery(
                          constraints: constraints,
                          image: 'assets/gallery/BoxImage3.png'),
                      SizedBox(
                        width: constraints.maxWidth * 0.04,
                      ),
                      CustomGallery(
                          constraints: constraints,
                          image: 'assets/gallery/BoxImage4.jpg')
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.06,
                  top: constraints.maxHeight * 0.03,
                ),
                child: Text(
                  'Price',
                  style: TextStyle(
                      color: const Color(0xFF0F2F44),
                      fontSize: constraints.maxWidth * 0.047,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: constraints.maxWidth * 0.06,
                  right: constraints.maxWidth * 0.04,
                  top: constraints.maxHeight * 0.005,
                ),
                child: Row(
                  children: [
                    Text(
                      '5990000',
                      style: TextStyle(
                          color: const Color(0xFF0F2F44),
                          fontSize: constraints.maxWidth * 0.065,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.27,
                    ),
                    Container(
                        height: constraints.maxHeight * 0.06,
                        width: constraints.maxWidth * 0.35,
                        decoration: BoxDecoration(
                            color: Color(0xFF103144),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'BUY NOW',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: constraints.maxWidth * 0.045),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
