import 'package:flutter/material.dart';

class CardViewList extends StatelessWidget {
  final Function()? onTap;
  final String imagePlace;
  final Color colorContainer;
  final String titletext;
  final String subTitleText;
  final Color textColor;
  final String location;
  final String price;
  final String timeOfCourse;

  const CardViewList({
    super.key,
    required this.imagePlace,
    required this.colorContainer,
    required this.titletext,
    required this.subTitleText,
    required this.textColor,
    this.onTap,
    required this.location,
    required this.price,
    required this.timeOfCourse,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: colorContainer,
          border: Border.all(
            color: colorContainer,
          ),
          // shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(9),
        ),
        height: 200,
        width: 270,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 15),
              child: ListTile(
                leading: Image.asset(
                  imagePlace,
                  height: 45,
                ),
                title: Text(
                  titletext,
                  style: TextStyle(
                    color: textColor,
                    fontFamily: 'Cera Pro',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  location,
                  style: TextStyle(
                    color: textColor,
                    fontFamily: 'Cera Pro',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subTitleText,
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cera Pro',
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price,
                            style: TextStyle(
                              color: textColor,
                              fontFamily: 'Cera Pro',
                            ),
                          ),
                          Text(
                            timeOfCourse,
                            style: TextStyle(
                              color: textColor,
                              fontFamily: 'Cera Pro',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
