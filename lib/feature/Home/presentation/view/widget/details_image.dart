import 'package:e_commerce/core/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'details_app_bar.dart';

class DetailsImage extends StatelessWidget {
  DetailsImage({Key? key, this.images, this.image, required this.id}) : super(key: key);

  List<String>? images;
  String? image;
  final int id;

  var boardController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              child: images != null
                  ? PageView.builder(
                      controller: boardController,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => buildImage(context, images![index]),
                      itemCount: images!.length,
                    )
                  : buildImage(context, image!),
            ),
            images != null
                ? buildSmoothPageIndicator(images!.length)
                : buildSmoothPageIndicator(1),
          ],
        ),
         Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 40,
          ),
          child: DetailsAppBar(id: id),
        ),
      ],
    );
  }

  Widget buildSmoothPageIndicator(int count) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SmoothPageIndicator(
          controller: boardController,
          count: count,
          effect: const ExpandingDotsEffect(
            spacing: 5,
            dotWidth: 20,
            dotHeight: 6,
            dotColor: Color.fromRGBO(217, 217, 217, 1),
            activeDotColor: Colors.blue,
            expansionFactor: 2,
          ),
        ),
      );

  Widget buildImage(context,String image)=>Container(
    height: MediaQuery.of(context).size.height * .5,
    decoration: BoxDecoration(
      image: DecorationImage(
        colorFilter: ColorFilter.mode(
            kPrimaryColor, BlendMode.multiply),
        fit: BoxFit.fill,
        image: NetworkImage(
          image,
        ),
      ),
    ),
  );
}
