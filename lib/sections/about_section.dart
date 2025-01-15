import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(20),
      child: ResponsiveRowColumn(
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        columnCrossAxisAlignment: CrossAxisAlignment.center,

        layout: ResponsiveBreakpoints.of(context).smallerThan(TABLET)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,

        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Image.asset(
              "assets/images/profile.png",
              height: 200,
              width: 200,
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Me",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Hi, I'm Aditya Shukla. I create responsive web and mobile applications "
                    "with a focus on functionality and design.",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Code to download resume
                        },
                        child: Text("Download Resume"),
                      ),

                    SizedBox(width: 10),
                    SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Code to navigate to Contact Us page
                    },
                    child: Text("Contact Us"),
                  ),
                    ],
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
