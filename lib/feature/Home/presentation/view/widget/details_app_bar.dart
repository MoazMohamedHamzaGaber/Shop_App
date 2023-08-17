import 'package:flutter/material.dart';

import '../../manage/cubit/home_cubit.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({Key? key, required this.id}) : super(key: key);

  final int id;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            const Text(
              'Details',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            HomeCubit()
                .get(context)
                .changeFavorites(context: context, productId: id);
            print(id);
          },
          icon: Icon(
            HomeCubit().get(context).favorites[id]!
                ? Icons.favorite
                : Icons.favorite_border,
            color: HomeCubit().get(context).favorites[id]!
                ? Colors.white
                : Colors.grey,
          ),
        ),
      ],
    );
  }
}
