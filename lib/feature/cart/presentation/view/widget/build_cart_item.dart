import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/feature/Home/presentation/manage/cubit/home_states.dart';
import 'package:e_commerce/feature/Home/presentation/view/details_view.dart';
import 'package:e_commerce/feature/cart/data/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Home/presentation/manage/cubit/home_cubit.dart';

class BuildCartItem extends StatefulWidget {
  const BuildCartItem({super.key, required this.model});

  final CartItems model;

  @override
  State<BuildCartItem> createState() => _BuildCartItemState();
}

class _BuildCartItemState extends State<BuildCartItem> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, Object? state) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                navigateTo(
                  context,
                  DetailsView(
                    image: widget.model.product!.image!,
                    name: widget.model.product!.name!,
                    price: widget.model.product!.price!,
                    oldPrice: widget.model.product!.oldPrice!,
                    description: widget.model.product!.description!,
                    discount: widget.model.product!.discount!,
                    id: widget.model.product!.id!,
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Container(
                      width: 120,
                      height: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            widget.model.product!.image!,
                          ),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 160,
                          child: Text(
                            widget.model.product!.name!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${widget.model.product!.price!.round()} EGP',
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: SizedBox(
                            width: 200,
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 243, 243, 243),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (widget.model.quantity! <= 1) {
                                              widget.model.quantity = 1;
                                            } else {
                                              widget.model.quantity =
                                                  widget.model.quantity! - 1;
                                            }
                                          });
                                        },
                                        child: const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.remove,
                                            color: Colors.blue,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                      Text('${widget.model.quantity}'),
                                      //Text('${AppCubit().get(context).counter}'),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            widget.model.quantity =
                                                widget.model.quantity! + 1;
                                          });
                                        },
                                        child: const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.blue,
                                            size: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: IconButton(
                                    onPressed: () {
                                      HomeCubit().get(context).changeCart(
                                          context: context,
                                          productId: widget.model.product!.id!);
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                      // : Colors.blueAccent[300],
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
