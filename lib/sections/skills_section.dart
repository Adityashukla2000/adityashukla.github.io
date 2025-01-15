import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Skills",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 20),
           Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              Chip(
  label: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Image.asset("assets/images/flutter.png",width: 26), // Ensure the path is correct
      const Text("Flutter"),
    ],
  ),
),
              Chip(label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/dart.png",width: 26), // Ensure the path is correct
                  const Text("Dart"),
                ],
              )),
              Chip(label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/java.png",width: 26), // Ensure the path is correct
                  const Text("Java"),
                ],
              )),
              Chip(label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/firebase.png",width: 26), // Ensure the path is correct
                  const Text("Firebase"),
                ],
              )),
              Chip(label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
       Image.asset("assets/images/ux.png",width: 26), // Ensure the path is correct
 
                  const Text("Responsive Design"),
                ],
              )),
            ],
          ),
        ],
      ),
    );
  }
}
