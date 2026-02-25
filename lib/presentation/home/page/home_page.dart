import 'package:flutter/material.dart';
import 'package:product_app/presentation/home/widgets/home_page_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => const HomePageView();
}
