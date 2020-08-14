import 'package:mostafood_app/src/models/food_model.dart';
import 'package:scoped_model/scoped_model.dart';

class FoodModel extends Model {
  List<Food> _foods = [];
  bool _isLoading = false;

  bool get isLoading {
    return _isLoading;
  }

  List<Food> get foods {
    return List.from(_foods);
  }

  int get foodLenght {
    return _foods.length;
  }


  Food getFoodItemById(String foodId){
    Food food;
    for(int i = 0; i < _foods.length; i++) {
      if(_foods[i].id == foodId) {
        food = _foods[i];
        break;
      }
    }
    return food;
  }
}