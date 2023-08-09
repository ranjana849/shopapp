import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutterfirebase_app/consts/app_constsnts.dart';
import 'package:flutterfirebase_app/widgets/subtitle.dart';
import 'package:flutterfirebase_app/widgets/title_text.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: GestureDetector(
          onTap: () {
            print("Todo add the navigate to the product detels is screen");
          },
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: FancyShimmerImage(
                imageUrl: AppConstsnts.imageUrl,
                height: size.height * 0.22,
                width: double.infinity,
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    flex: 5,
                    child: TitleTextWidget(
                      label: "Title",
                      fontSize: 20,
                      maxLine: 2,
                    )),
                Flexible(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(IconlyLight.heart)),
                ),
                Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: SubtitleTextWidget(
                          label: "1520.00\$",
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        )),
                    Flexible(
                      child: IconButton(
                          onPressed: () {},
                          icon: Material(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue.shade200,
                            child: InkWell(
                                onTap: () {},
                                splashColor: Colors.red,
                                borderRadius: BorderRadius.circular(12),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.add_shopping_cart),
                                )),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ]),
        ));
  }
}
