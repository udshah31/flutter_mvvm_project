import 'package:get/get.dart';
import '../../view_models/homeMainViewModel/home_main_view_model.dart';

class HomeMainBinding  extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<HomeMainViewModel>(() => HomeMainViewModel());
  }

}