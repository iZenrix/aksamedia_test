import 'package:arkatama_test/app/components/organisms/product_module/description_section.dart';
import 'package:arkatama_test/app/components/organisms/product_module/footer_button_row.dart';
import 'package:arkatama_test/app/components/organisms/product_module/product_detail_section.dart';
import 'package:arkatama_test/app/components/organisms/product_module/product_list.dart';
import 'package:arkatama_test/app/components/organisms/product_module/product_option_selector.dart';
import 'package:arkatama_test/app/components/templates/product_module/product_feature_template.dart';
import 'package:arkatama_test/app/features/product/controller/product_controller.dart';
import 'package:arkatama_test/app/features/product/view/molecules/product_header.dart';
import 'package:arkatama_test/app/features/product/view/organisms/product_image_showcase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductFeaturePage extends StatelessWidget {
  const ProductFeaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());

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
                    products: controller.relatedProducts,
                  ),
                  ProductList(
                    title: 'Produk Serupa',
                    products: controller.relatedProducts,
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
}
