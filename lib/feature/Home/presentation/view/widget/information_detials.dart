import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_cubit.dart';
import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readmore/readmore.dart';

class InformationDetails extends StatelessWidget {
  const InformationDetails(
      {Key? key,
      required this.name,
      required this.price,
      required this.oldPrice,
      required this.description,
      required this.discount,
      required this.id})
      : super(key: key);

  final String name;
  final dynamic price;
  final dynamic oldPrice;
  final String description;
  final dynamic discount;
  final int id;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        return Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .5,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.only(
              topEnd: Radius.circular(60),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Text(
                                  '${price.round()} \$',
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                // if (discount != null)
                                //   Text(
                                //     '${oldPrice.round()} \$',
                                //     style: TextStyle(
                                //       fontSize: 20,
                                //       fontWeight: FontWeight.w500,
                                //       color: Colors.blue.shade200,
                                //       decoration: TextDecoration.lineThrough,
                                //     ),
                                //   ),
                                const Spacer(),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border:
                                        Border.all(color: Colors.grey.shade300),
                                  ),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove),
                                      ),
                                      const Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.add),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Description',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ReadMoreText(
                              description,
                              trimLines: 4,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                              ),
                              moreStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              HomeCubit().get(context).carts[id]!
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                        //horizontal: 20,
                        vertical: 15,
                      ),
                      child: ConditionalBuilder(
                        condition: state is! ChangeCartLoadingStates,
                        builder: (BuildContext context) => buildMaterialButton(
                          function: () {
                            HomeCubit()
                                .get(context)
                                .changeCart(context: context, productId: id);
                          },
                          width: 300,
                          iconData: Icons.check,
                          text: 'added',
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue,
                        ),
                        fallback: (BuildContext context) => const Padding(
                          padding: EdgeInsets.only(
                            bottom: 15,
                          ),
                          child: Center(child: CircularProgressIndicator()),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                        //horizontal: 20,
                        vertical: 15,
                      ),
                      child: ConditionalBuilder(
                        condition: state is! ChangeCartLoadingStates,
                        builder: (BuildContext context) => buildMaterialButton(
                          function: () {
                            HomeCubit()
                                .get(context)
                                .changeCart(context: context, productId: id);
                          },
                          width: 300,
                          text: 'Add to Cart',
                          borderRadius: BorderRadius.circular(8),
                          color: kPrimaryColor,
                        ),
                        fallback: (BuildContext context) => const Padding(
                          padding: EdgeInsets.only(
                            bottom: 15,
                          ),
                          child:
                              Center(child: CircularProgressIndicator()),
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
