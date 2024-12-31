import 'package:code_structure/custom_widgets/friend_zone/nearby_screen.dart';
import 'package:code_structure/ui/screens/nearby_matches/nearby_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NearbyScreen extends StatefulWidget {
  const NearbyScreen({super.key});

  @override
  State<NearbyScreen> createState() => _NearbyScreenState();
}

class _NearbyScreenState extends State<NearbyScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NearbyScreeViewModel(),
      child: Consumer<NearbyScreeViewModel>(
          builder: (context, model, child) => Scaffold(
                body: Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1, childAspectRatio: 1.2),
                        itemCount: model.listNearbyScreen.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: CustomNearbyWidget(
                                Object_nearby: model.listNearbyScreen[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )),
    );
  }
}
