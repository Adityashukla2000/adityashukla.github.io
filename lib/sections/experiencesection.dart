import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

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
              "assets/images/experience.png", // Add an appropriate image if needed
              height: 200,
              width: 200,
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Experience",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "1 Month in Flutter at Softech",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "1.3 Years as a Software Programmer at Natural Support Consultancy Services Pvt. Ltd., Jaipur (Joined on 27 Nov 2023)",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
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
