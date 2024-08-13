import 'package:aksamedia_test/app/features/product/binding/product_binding.dart';
import 'package:aksamedia_test/app/features/product/view/product_feature_page.dart';
import 'package:get/get.dart';

class ProductFeature{
  static GetPage route() {
    return GetPage(
      name: ProductFeaturePage.productRoute,
      page: () => const ProductFeaturePage(),
      binding: ProductBinding(),
    );
  }
}