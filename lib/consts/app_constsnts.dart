import '../model/categoriesmodel.dart';
import '../services/assets_manager.dart';

class AppConstsnts{
  static const String imageUrl=
      'https://images.unsplash.com/photo-1465572089651-8fde36c892dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80';

  static List<String>bannersImage=[
    AssetsManager.banner1,
    AssetsManager.banner2,];

  static List<CategoriesModel>categoriesList=[
    CategoriesModel(
        id:AssetsManager.mobiles,
        name: "Phone",
        image: AssetsManager.mobiles,),
    CategoriesModel(
      id:AssetsManager.book_img,
      name: "Phone",
      image: AssetsManager.book_img,),
    CategoriesModel(
      id:AssetsManager.cosmetics,
      name: "Phone",
      image: AssetsManager.cosmetics,),
    CategoriesModel(
      id:AssetsManager.electronics,
      name: "Phone",
      image: AssetsManager.electronics,),
    CategoriesModel(
      id:AssetsManager.fashion,
      name: "Phone",
      image: AssetsManager.fashion,),
    CategoriesModel(
      id:AssetsManager.pc,
      name: "Phone",
      image: AssetsManager.pc,),
    CategoriesModel(
      id:AssetsManager.shoes,
      name: "Phone",
      image: AssetsManager.shoes,),
    CategoriesModel(
      id:AssetsManager.watch ,
      name: "Phone",
      image: AssetsManager.watch ,),



  ];
}