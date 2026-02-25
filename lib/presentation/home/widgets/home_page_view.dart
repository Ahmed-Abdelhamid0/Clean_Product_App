import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_app/core/themes/colors/app_colors.dart';
import 'package:product_app/core/themes/fonts/font_sizes.dart';
import 'package:product_app/core/utils/extension/translation.dart';
import 'package:product_app/core/utils/extension/typography.dart';
import 'package:product_app/presentation/home/cubit/home_cubit.dart';
import 'package:product_app/presentation/home/cubit/home_state.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().createHome();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: AppColors.primaryColor,
      title: Text(
        context.translation.appBarTitle,
        style: context.typography.bodyLargeSemi.copyWith(
          fontSize: FontSizes.size22,
        ),
      ),
    ),
    body: BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.primaryColor),
          );
        } else if (state is HomeLoaded) {
          return const SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Home Page')],
            ),
          );
        } else {
          return Container();
        }
      },
    ),
  );
}
