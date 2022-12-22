import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Container(
              child: SizedBox(
                child: Image.asset(ImageItems().pngAsset,
                  fit: BoxFit.cover,
                  color: Colors.blueAccent,
                  height: 500,
                  width: 500,
                ),
                height: 100,
                width: 100,
              ),
            ),
          ),
          Image.asset(ImageItems().pngApple,
            fit: BoxFit.cover,
            height: 100,
          ),
          _NewWidget(link: ImageItems().pngNetwork,),
        ],
      ),
    );
  }
}

class _NewWidget extends StatelessWidget {
  const _NewWidget({
    Key? key, this.link,
  }) : super(key: key);

  final String? link;

  @override
  Widget build(BuildContext context) {
    return Image.network(link!,
    fit: BoxFit.cover,
      height: 100,
      errorBuilder: (context, error, stackTrace) => const Icon(Icons.abc_outlined), //Image gelmez ise hata durumunda bunu göster
    );
  }
}

class ImageItems {
  final String pngAsset = "assets/PNG_transparency_demonstration_1.png";
  final String pngApple = "assets/png/Apple-Download-Free-PNG.png";
  final String pngNetwork = "https://cdn.pixabay.com/photo/2015/06/09/16/12/error-803716_960_720.pn";
}


