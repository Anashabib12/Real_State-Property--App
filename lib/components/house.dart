import 'package:flutter/material.dart';

class House extends StatelessWidget {
  final BoxConstraints constraints;
  const House({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraints.maxWidth * 0.9,
      height: constraints.maxHeight * 0.52,
      decoration: BoxDecoration(
        color: const Color(0xFF0E3146),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: constraints.maxWidth * 0.9,
            height: constraints.maxHeight * 0.35,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.asset(
                'assets/houses/house1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: constraints.maxWidth * 0.06,
              top: constraints.maxHeight * 0.03,
            ),
            child: Text(
              'CRAFTSMAN HOUSE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: constraints.maxWidth * 0.05,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: constraints.maxWidth * 0.06,
            ),
            child: Text(
              '520 N Btoudry Ave Los Angeles',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.42),
                  fontSize: constraints.maxWidth * 0.04),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: constraints.maxWidth * 0.02,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                  width: constraints.maxWidth * 0.06,
                  child: Image.asset(
                    'assets/icons/bed.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  '4 Beds',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.42),
                      fontSize: constraints.maxWidth * 0.04),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                  width: constraints.maxWidth * 0.06,
                  child: Image.asset(
                    'assets/icons/bath.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  '4 Baths',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.42),
                      fontSize: constraints.maxWidth * 0.04),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.04,
                  width: constraints.maxWidth * 0.06,
                  child: Image.asset(
                    'assets/icons/car.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  '1 Garage',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.42),
                      fontSize: constraints.maxWidth * 0.04),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
