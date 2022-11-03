import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String imageUrl;
  final String? title;
  final String? subtitle;
  const CustomCard2(
      {super.key, this.title, this.subtitle, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('object');
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 10,
        shadowColor: AppTheme.primary.withOpacity(0.6),
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: const AssetImage('assets/gif/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (title != null && subtitle != null)
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 10),
                child: ListTile(
                  title: Text(title!),
                  subtitle: Text(subtitle!),
                ),
              )
            else if (title != null && subtitle == null)
              Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: const EdgeInsets.only(
                      left: 30, right: 20, top: 10, bottom: 10),
                  child: Text(title!,
                      style: const TextStyle(fontWeight: FontWeight.bold)))
            else if (title == null && subtitle != null)
              Container(
                  alignment: AlignmentDirectional.centerStart,
                  padding: const EdgeInsets.only(
                      left: 30, right: 20, top: 10, bottom: 10),
                  child: Text(subtitle!))
          ],
        ),
      ),
    );
  }
}
