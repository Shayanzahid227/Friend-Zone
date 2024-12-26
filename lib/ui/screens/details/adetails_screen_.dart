import 'package:code_structure/core/constants/app_asset.dart';
import 'package:code_structure/ui/screens/details/detail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DetailsScreenViewModel(),
      child: Consumer<DetailsScreenViewModel>(
          builder: (context, model, child) => Scaffold(
                body: Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AppAssets().detailmain),
                              scale: 3)),
                    )
                  ],
                ),
              )),
    );
  }
}
