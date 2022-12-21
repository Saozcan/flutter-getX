import 'package:flutter/material.dart';

class TextLearn extends StatelessWidget {
  const TextLearn({super.key, this.userName});

  final String name = "Veli123";
  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Veli $name Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli Veli ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "Ahmet in göbegi",
                style: ProjectStyles.welcomeStyle,
              ),
              Text(
                "3.Bölge Text",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                userName ?? "", //Wright way to use argument nullable value
                style: Theme.of(context).textTheme.headline5,
              )
            ],
          )),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      color: Colors.blueAccent,
      fontSize: 25,
      fontWeight: FontWeight.w900
  );
}