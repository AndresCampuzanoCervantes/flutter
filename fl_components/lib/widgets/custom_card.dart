import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            title: Text('List Card'),
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            subtitle: Text(
                'Quis pariatur aute excepteur duis eiusmod enim ad esse pariatur voluptate ad nisi laboris dolor.Minim irure proident cupidatat adipisicing excepteur.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancelar'),
                ),
                TextButton(onPressed: () {}, child: const Text('Aceptar')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
