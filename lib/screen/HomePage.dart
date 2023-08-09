import 'package:flutter/material.dart';
import 'package:flutterfirebase_app/consts/app_colors.dart';
import 'package:flutterfirebase_app/consts/app_constsnts.dart';
import 'package:flutterfirebase_app/providers/theme_provider.dart';
import 'package:flutterfirebase_app/services/assets_manager.dart';
import 'package:flutterfirebase_app/widgets/app_name.dart';
import 'package:flutterfirebase_app/widgets/products/ctg_rounded_widget.dart';
import 'package:flutterfirebase_app/widgets/products/latest_arrival.dart';
import 'package:flutterfirebase_app/widgets/subtitle.dart';
import 'package:flutterfirebase_app/widgets/title_text.dart';
import 'package:card_swiper/card_swiper.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //final themeProvider =Provider.of<ThemeProvider>(context);
    return Scaffold(

      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shopping_cart),
        ),
        title:AppNameTextWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height:size.height*0.25,
                child: Swiper(
                  itemBuilder: (BuildContext context,int index){
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(AppConstsnts.bannersImage[index],
                      fit: BoxFit.fill,),
                    );
                  },
                  itemCount:AppConstsnts.bannersImage.length,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      activeColor: Colors.red,color: Colors.white)
                  ),
                  control: SwiperControl(),

                ),
              ),
              SizedBox(height: 15,
              ),
              TitleTextWidget(label: "Latest arrival"),
              SizedBox(height: 15,
              ),
              SizedBox(
                height: size.height*0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount:10 ,
                    itemBuilder: (context,index)=>
                    LatestArrivalWidget()),
              ),
              SizedBox(height: 15,),
              TitleTextWidget(label: "Categories"),
              SizedBox(height: 15,),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 5,
              children:
                List.generate(AppConstsnts.categoriesList.length,
                        (index) => CategoryRoundedWidget(
                            image:AppConstsnts.categoriesList[index].image,
                            name:AppConstsnts.categoriesList[index].name))

            ),


            ],
          ),
        ),
      )
    );
  }
}
