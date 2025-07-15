import 'package:bookly_app/core/widgets/images/book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: SizedBox(
        height:  MediaQuery.of(context).size.height * .35,
        child: ListView.builder(
          scrollDirection : Axis.horizontal,
          itemCount: 5,
         itemBuilder:  (context , index){
          return const Padding(
            padding:  EdgeInsets.only(right : 16.0),
            child:  BookImage(aspectRatio: .66,borderRadius: 16),
          );
        }),
      ),
    );
  }
}