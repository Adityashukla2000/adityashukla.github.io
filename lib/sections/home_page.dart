import 'package:aditya/sections/experiencesection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/theme_provider.dart';
import 'about_section.dart';
import 'skills_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Aditya Shukla"),
        backgroundColor: Colors.grey,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
          IconButton(
            icon: Icon(themeProvider.themeMode == ThemeMode.light
                ? Icons.dark_mode
                : Icons.light_mode),
            onPressed: themeProvider.toggleTheme,
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutSection(),
            SkillsSection(),
            ExperienceSection(),
          ],
        ),
      ),
      
    );
  }
}
