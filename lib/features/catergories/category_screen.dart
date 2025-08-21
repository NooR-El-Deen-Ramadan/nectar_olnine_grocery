// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:nectar_olnine_grocery/core/utils/font_style.dart';

import 'package:nectar_olnine_grocery/core/widgets/layout/grid_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title, style: AppFontStyle.getSubHeaders())),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridViewBuilder(),
      ),
    );
  }
}
