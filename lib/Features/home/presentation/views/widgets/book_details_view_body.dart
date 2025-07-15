import 'package:bookly_app/Features/home/presentation/views/widgets/details_view_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.only(top: 32,left: 30,right: 30),
      child: SafeArea(
        child: Column(
          children: [
            DetailsViewAppBar(),
          ],
        ),
      ),
    );
  }
}

