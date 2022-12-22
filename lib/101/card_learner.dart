import 'package:flutter/material.dart';


//Önde olan bir componentdir
//Güzel ui için kullanır
//Normal containerdan daha güzel gözükür
//Margin özelliği vardır.
//

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const [
          Center(
            child: CustomCardWidget(),
          ),
          Card(
            margin: EdgeInsets.all(50),
            color: Colors.redAccent,
            child: SizedBox(height: 50, width: 50,),
            shape: StadiumBorder(),
          ),
          Card(
            margin: EdgeInsets.all(50),
            color: Colors.redAccent,
            child: SizedBox(height: 50, width: 50,),
            shape: CircleBorder(),
          ),
          Card(
            margin: EdgeInsets.all(50),
            color: Colors.redAccent,
            child: SizedBox(height: 50, width: 50,),
          ),
        ],
      ),
    );
  }
}

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(50),
      color: Colors.redAccent,
      child: SizedBox(height: 50, width: 50,),
      shape: RoundedRectangleBorder(),
    );
  }
}
