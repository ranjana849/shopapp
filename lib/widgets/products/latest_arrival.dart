import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutterfirebase_app/consts/app_constsnts.dart';

import '../subtitle.dart';
class LatestArrivalWidget extends StatelessWidget {
  const LatestArrivalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          print("Todo add the navigate to the product details screen");
        },
        child: SizedBox(
          width: size.width*0.45,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: FancyShimmerImage(
                      imageUrl:AppConstsnts.imageUrl,
                    height: size.height*0.25,
                    width: size.width*0.35,
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Flexible(
                child: Column(
                  children: [
                    Text("Title",maxLines: 2,
                      overflow:TextOverflow.ellipsis ,),
               FittedBox(
                 child: Row(
                   children: [
                     IconButton(
                         onPressed: () {},
                         icon: Icon(IconlyLight.heart)),
                     IconButton(
                         onPressed: () {},
                         icon: Icon(Icons.shopping_cart)),
                   ],
                 ),
               ),
                    FittedBox(
                      child: SubtitleTextWidget(
                        label: "1520.00\$",
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
