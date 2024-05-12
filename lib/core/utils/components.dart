import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';

Widget textFormField({
  required String text,
  required TextInputType type,
  required TextEditingController controller,
  bool isObscureText=false,
}) =>
    TextFormField(
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      obscureText: isObscureText,
      keyboardType: type,
      controller: controller,
      decoration: InputDecoration(
          label: Text(
            text,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          )),
    );


Widget customLoadingView()=>const Center(child: CircularProgressIndicator());

Future buildShowLoading(context) async {
  return await showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('Please Wait'),
          content: SizedBox(
            height: 50,
            child: Center(child: CircularProgressIndicator()),
          ),
        );
      });
}

Future<void> buildShowDialog({
  context,
  required String image,
  required String name,
  required Function function,
  bool cancel = false,
}) =>
    showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: Theme
                .of(context)
                .scaffoldBackgroundColor,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  image,
                  height: 60,
                  width: 60,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(name),
                const SizedBox(
                  height: 10,
                ),
                cancel
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        function();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                )
                    : Center(
                  child: TextButton(
                    onPressed: () {
                      function();
                    },
                    child: const Text('OK'),
                  ),
                ),
              ],
            ),
          ),
    );


Future<bool> exitAp(context) async{
  bool exitApp=await showDialog(
    context: context,
    builder: (context) =>
        AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: Theme
              .of(context)
              .scaffoldBackgroundColor,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
               const Text('Do you want to close the app?',
                style:TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text('OK'),
                  ),
                ],
              ),
            ],
          ),
        ),
  );
  return exitApp ??false;
}