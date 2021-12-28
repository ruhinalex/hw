import 'package:flutter/material.dart';
import '../components/player_card.dart';
import 'view.dart';
import '../data/db.dart';

class HomePage extends StatelessWidget {
  final List<Map> playersData = db().players;
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5C24FC),
        title: const Text('Cricket Player\'s Directory'),
      ),
      body: Container(
        color: Color(0xffF4F5F7),
        height: double.infinity,
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: (400 / 505),
          ),
          itemCount: playersData.length,
          itemBuilder: (BuildContext context, int i) => InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return ViewPage(
                    image: playersData[i]["photo"],
                    fullName: playersData[i]["full_name"],
                    age: playersData[i]["age"],
                    role: playersData[i]["role"],
                    details: playersData[i]["details"],
                  );
                },
              ));
            },
            child: MyPlayerCard(
              image: playersData[i]["photo"],
              name: playersData[i]["name"],
              age: playersData[i]["age"],
            ),
          ),
        ),
      ),
    );
  }
}
