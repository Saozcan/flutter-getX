import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget with _ColorsUtility {
  CustomWidgetLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //justify start
        children: [
          CustomFootButton(
            title: "Food",
            onPressed: () {},
          ),
          const SizedBox(
            height: 100,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomFootButton(title: "Foot", onPressed: () {})),
          //MediaQuery ekran ölcülerini alınabilir.
        ],
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(0.8);
}

class CustomFootButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFootButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;
  //button function özelliğinin parametre olarak eklenmesl

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: redColor, shape: const StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: normalPadding,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
