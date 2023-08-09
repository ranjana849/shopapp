import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutterfirebase_app/widgets/app_name.dart';
import 'package:flutterfirebase_app/widgets/subtitle.dart';
import 'package:flutterfirebase_app/widgets/title_text.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';
import '../services/assets_manager.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider =Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shopping_cart
        ),),
        title: const AppNameTextWidget(),
      ),
      body: SingleChildScrollView(
        physics:BouncingScrollPhysics() ,
        child: Column(
          children: [
            Visibility(
              visible: false,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: TitleTextWidget(
                  label: "Please login to have unlimited access",
                ),
              ),
            ),
            Visibility(
              visible: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,
                vertical: 6),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:Theme.of(context).cardColor,
                        border: Border.all(color: Theme.of(context).colorScheme.background,
                        width: 3,
                        ),
                        image: DecorationImage(image: NetworkImage("https://pngtree.com/freepng/sun-3d-summer-yellow-nature_7954715.html"),
                        fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleTextWidget(label: "Ranjana"),
                        SizedBox(height: 6,),
                        SubtitleTextWidget(label: "ranjana.dahake@gmail.com")
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleTextWidget(label: "General"),
                  SizedBox(height: 6,),
                  CustomListTile(
                    text: "All Order",
                    imagePath: AssetsManager.order_svg,
                    function: (){},
                  ),
                  CustomListTile(
                    text: "Wishlist",
                    imagePath: AssetsManager.wishlist_svg,
                    function: (){},
                  ),
                  CustomListTile(
                    text: "Viewed recently",
                    imagePath: AssetsManager.recent,
                    function: (){},
                  ),
                  CustomListTile(
                    text: "Address",
                    imagePath: AssetsManager.address,
                    function: (){},
                  ),
                  SizedBox(height: 10,),
                  TitleTextWidget(label: 'Settings'),
                  SizedBox(height:4),
                  const Divider(
                    thickness:2,
                  ),
                  SwitchListTile(

                    secondary: Image.asset(AssetsManager.theme,
                    height: 34,),
                      title: Text(themeProvider.getIsDarkTheme
                          ?"Dark Mode":"Light Mode"),
                      value:themeProvider.getIsDarkTheme,
                      onChanged:(value){
                        themeProvider.setDarkTheme(themevalue: value);

                      }),
                ],
              ),
            ),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  )
                ),
                onPressed: (){},
                  icon: const Icon(Icons.login),
              label: const Text('Login'),),
            ),
          ],
        ),
      ),
    );
  }
}
class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key,
    required this.imagePath,
    required this.text,
    required this.function});
  final String imagePath,text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        function();
      },
      title:SubtitleTextWidget(label: text),
      leading:Image.asset(imagePath,
        height: 30,),
      trailing: Icon(IconlyLight.arrowRight2),
    );
  }
}
