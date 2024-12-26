import 'package:code_structure/core/model/profile_multimedia.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMultiMediaIntrodductionWidget extends StatelessWidget {
  ProfileMultimediaModel Object_profileMultiMedia = ProfileMultimediaModel();
  CustomMultiMediaIntrodductionWidget({required this.Object_profileMultiMedia});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("${Object_profileMultiMedia.imgUrl}"),
                  )),
              height: 170,
              width: 320,
            ),
            Text("${Object_profileMultiMedia.title}"),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
