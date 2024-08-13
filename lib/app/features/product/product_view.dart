import 'package:arkatama_test/app/components/organisms/product_organisms/product_organisms.dart';
import 'package:arkatama_test/app/components/atoms/primary_button.dart';
import 'package:arkatama_test/app/features/product/controller/product_controller.dart';
import 'package:arkatama_test/app/components/molecules/product_molecules/product_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
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
                        // ProductList(
                        //   title: 'Produk lain dari Irvie group official',
                        //   products: controller.relatedProducts,
                        // ),
                        // ProductList(
                        //   title: 'Produk Serupa',
                        //   products: controller.relatedProducts,
                        // ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: PrimaryButton(
                                  height: 40,
                                  backgroundColor: const Color(0xffFFFFFF),
                                  foregroundColor: const Color(0xff242626),
                                  borderRadius: 10,
                                  text: 'Tambahkan ke toko',
                                  borderSide: const BorderSide(
                                    color: Color(0xff242626), // Border color
                                    width: 1, // Border width
                                  ),
                                  padding: EdgeInsets.zero,
                                  onPressed: () {},
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 40,
                                  child: PrimaryButton(
                                    onPressed: () {},
                                    //same with elevated button above
                                    backgroundColor: const Color(0xff242626),
                                    foregroundColor: const Color(0xffffffff),
                                    borderRadius: 10,
                                    widget: const Icon(
                                      Icons.shopping_cart,
                                      size: 20,
                                    ),
                                    height: 40,

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const ProductHeader(),
        ],
      ),
    );
  }
}
