import 'package:flutter/material.dart';
import '../../../../core/utils/constant.dart';
import 'widget/details_view_body.dart';

class DetailsView extends StatelessWidget {
  DetailsView(
      {Key? key,
      required this.name,
      required this.price,
      required this.oldPrice,
      required this.description,
      required this.discount,
       this.images,
        this.image, required this.id,
      })
      : super(key: key);

  final String name;
  final dynamic price;
  final dynamic oldPrice;
  final String description;
  final dynamic discount;
  List <String>? images;
  String? image;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: DetailsViewBody(
          name: name,
          price: price,
          oldPrice: oldPrice,
          description: description,
          discount: discount,
          images: images,
        image: image, id: id,
      ),
    );
  }
}
