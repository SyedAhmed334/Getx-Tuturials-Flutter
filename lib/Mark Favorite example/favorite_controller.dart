import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<String> fruits =
      ['Apple', 'Banana', 'Mango', 'Peach', 'Watermelon', 'Orange'].obs;
  RxList favoriteFruits = [].obs;
  RxList<dynamic> get myFruits => fruits;
  RxList get favFruits => favoriteFruits;
  addFavFruit(String fruit) {
    favoriteFruits.add(fruit);
  }

  removeFavFruit(String fruit) {
    favoriteFruits.remove(fruit);
  }
}
