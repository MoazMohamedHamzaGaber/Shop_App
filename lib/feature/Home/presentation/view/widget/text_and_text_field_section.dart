import 'package:e_commerce/core/utils/constant.dart';
import 'package:e_commerce/feature/search/presentation/view/search_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class TextAndTextFieldSection extends StatelessWidget {
   const TextAndTextFieldSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Choose',
          style: Style.style25,
        ),
        const Text('Your Product',
          style: Style.style25,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: (){
                  navigateTo(context,  SearchView());
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10
                  ),
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Row(
                    children:  [
                      Icon(
                        Icons.search,
                        color: Colors.grey.shade400,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Find your product',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 55,
              padding: const EdgeInsets.symmetric(
                  horizontal: 10
              ),
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade700,
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.grey.shade400,
              ),
            )
          ],
        )
      ],
    );
  }
}
