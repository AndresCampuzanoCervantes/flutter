import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Screen'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCard(),
            SizedBox(height: 20),
            CustomCard2(
              imageUrl:
                  'https://media.tenor.com/mlDzdW0ZdVAAAAAd/wallpaper.gif',
              title: 'Id eu dolore ex sunt irure reprehenderit.',
              subtitle:
                  'Minim dolore laborum esse sit.Nulla voluptate minim velit enim aliqua eiusmod ex dolore.Eu est minim id ex duis amet mollit velit consectetur excepteur aliquip amet.',
            ),
            SizedBox(height: 20),
            CustomCard2(
              imageUrl:
                  'https://cdnb.artstation.com/p/assets/images/images/024/538/827/original/pixel-jeff-clipa-s.gif?1582740711',
              title: 'PRUEBA',
            ),
            SizedBox(height: 20),
            CustomCard2(
              imageUrl:
                  'https://cdna.artstation.com/p/assets/images/images/024/538/828/original/pixel-jeff-clipc-s.gif?1582740521',
              subtitle: 'prueba',
            ),
            SizedBox(height: 20),
            CustomCard2(
              imageUrl:
                  'https://media.tenor.com/aM_jvlV8LogAAAAd/idk-wallpaper.gif',
            ),
          ],
        ));
  }
}
