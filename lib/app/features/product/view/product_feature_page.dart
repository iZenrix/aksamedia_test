import 'package:arkatama_test/app/components/molecules/product_molecules/product_molecules.dart';
import 'package:arkatama_test/app/components/organisms/product_organisms/product_organisms.dart';
import 'package:arkatama_test/app/components/templates/product_templates/product_feature_template.dart';
import 'package:arkatama_test/app/features/product/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductFeaturePage extends GetView<ProductController> {
  const ProductFeaturePage({super.key});

  static const String productRoute = '/product';

  @override
  Widget build(BuildContext context) {
    List<ProductCard> relatedProducts = List.generate(
      3,
          (index) => ProductCard(
        imageUrl: 'assets/images/product/product-image.png',
        title: 'Beauty Set by Irvie',
        price: 'Rp 142.400',
        isNew: isNewProduct(index, isFirstList: true),
        commission: 'Komisi',
      ),
    );

    List<ProductCard> similarProducts = List.generate(
      3,
          (index) => ProductCard(
        imageUrl: 'assets/images/product/product-image.png',
        title: 'Beauty Set by Irvie',
        price: 'Rp 142.400',
        isNew: isNewProduct(index, isFirstList: false),
        commission: 'Komisi',
      ),
    );

    return ProductFeatureTemplate(
      header: const ProductHeader(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Obx(
            () => ProductImageShowcase(
              pageController: controller.pageController,
              index: controller.currentPage.value,
              onPageChanged: (int index) {
                controller.currentPage.value = index;
              },
            ),
          ),
          Transform.translate(
            offset: Offset(0, -Get.height * 0.02),
            child: Container(
              width: Get.width,
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  const ProductDetailSection(),
                  Obx(
                    () => ProductOptionSelector(
                      selectedSize: controller.selectedSize.value,
                      selectedColor: controller.selectedColor.value,
                      onSizeSelected: (int index) {
                        controller.selectedSize.value = index;
                      },
                      onColorSelected: (int index) {
                        controller.selectedColor.value = index;
                      },
                    ),
                  ),
                  Obx(
                    () => DescriptionSection(
                      isExpanded: controller.isExpanded.value,
                      onToggle: () {
                        controller.isExpanded.value =
                            !controller.isExpanded.value;
                      },
                    ),
                  ),
                  ProductList(
                    title: 'Produk lain dari Irvie group official',
                    products: relatedProducts,
                  ),
                  ProductList(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    title: 'Produk Serupa',
                    products: similarProducts,
                  ),
                  FooterButtonRow(
                    onPrimaryPressed: () {},
                    onIconPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isNewProduct(int index, {required bool isFirstList}) {
    if (isFirstList) {
      return index % 2 != 0;
    } else {
      return index % 2 == 0;
    }
  }
}
