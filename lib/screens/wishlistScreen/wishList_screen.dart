import 'package:flutter/material.dart';
import 'package:property_app/components/bookmark.dart';
import 'package:property_app/components/customHeading.dart';
import 'package:property_app/screens/wishlistScreen/wishlist.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (context, constraints) {
        return Padding(
          padding: EdgeInsets.only(
            top: constraints.maxHeight * 0.058,
            left: constraints.maxWidth * 0.06,
            right: constraints.maxWidth * 0.05,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomHeading(
                    text: 'Wishlist',
                    fontSize: constraints.maxWidth * 0.075,
                    color: const Color(0xFF0F2F44),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Bookmark(
                      width: constraints.maxWidth * 0.15,
                      height: constraints.maxHeight * 0.09,
                      image: 'assets/icons/Arrow_Left.png',
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: wishlist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: wishlist[index],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
