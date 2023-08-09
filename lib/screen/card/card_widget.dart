import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutterfirebase_app/screen/card/quantiy_btm_sheet.dart';
import 'package:flutterfirebase_app/widgets/subtitle.dart';
import 'package:flutterfirebase_app/widgets/title_text.dart';
class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: FancyShimmerImage(
                  imageUrl: 'https://images.unsplash.com/photo-1465572089651-8fde36c892dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
                  height: size.height*0.2,
                  width: size.width *0.2,
                ),
              ),
              SizedBox(width: 10,),
              IntrinsicWidth(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width:size.width*01,
                          child: TitleTextWidget(
                              label:"Title"*20,
                            maxLine: 2,
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(onPressed:(){},
                                icon: Icon(Icons.clear,
                                 color: Colors.red,)),
                            IconButton(onPressed:(){},
                                icon: Icon(IconlyLight.heart,
                                  color: Colors.red,))
                          ],
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubtitleTextWidget(
                            label: "17.00\$",
                        color: Colors.blue,),
                       
                       OutlinedButton.icon(
                           onPressed: () async{
                             await showModalBottomSheet(
                               backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                               shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.only(
                                     topLeft: Radius.circular(15),
                                     topRight: Radius.circular(15)
                                   )),
                               context:context,
                               builder:(context){
                                 return QuantityBottomSheet();
                               });
                           },
                           icon: Icon(IconlyLight.arrowDown2),
                         label:Text("Qty:6") ,
                         style: OutlinedButton.styleFrom(
                           side: BorderSide(width: 1),
                           shape: BeveledRectangleBorder(
                             borderRadius: BorderRadius.circular(4)
                           )
                         ),
                       )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
