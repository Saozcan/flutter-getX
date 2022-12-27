import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_utils/101/image_learn.dart';

class DemoOne extends StatelessWidget {
  const DemoOne({Key? key}) : super(key: key);

  final String _title = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.grey[50],
      ),
      body: Center(
        child: Padding(
          padding: PaddingItems().horizantalPadding,
          child: Column(
            children: [
              _ImageAsset(),
              Text(
                _title,
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.black,
                    ),
              ),
              Padding(
                padding: PaddingItems().verticalPadding,
                child: Text(
                  "Add a note" * 10,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.black54),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                      height: 60,
                      width: 300,
                      child: Center(
                        child: Text(
                          "Create a Note",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ))),

            ],
          ),
        ),
      ),
    );
  }
}

class _ImageAsset extends StatelessWidget {
  const _ImageAsset({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      ImageItems().pngApple,
      fit: BoxFit.cover,
      height: 300,
    );
  }
}

class PaddingItems {
  final EdgeInsets horizantalPadding = EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}
