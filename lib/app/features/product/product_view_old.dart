import 'package:arkatama_test/app/features/product/controller/product_controller.dart';
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
                Stack(
                  children: [
                    SizedBox(
                      width: Get.width,
                      height: Get.height * 0.5,
                      child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: controller.pageController,
                        onPageChanged: (index) {
                          controller.currentPage.value = index;
                        },
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            'assets/images/product/product-image.png',
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                    ),
                    Positioned(
                      bottom: Get.height * 0.05,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          4,
                          (index) => Obx(
                            () => Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: controller.currentPage.value == index
                                  ? 20
                                  : 4,
                              height: 4,
                              decoration: BoxDecoration(
                                color: const Color(0xffE6E7E7),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: Offset(0, -Get.height * 0.02),
                  child: Container(
                    width: Get.width,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffECE806),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: const Row(
                                      children: [
                                        Text(
                                          'NEW',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'Product Baru',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/product/icons/share.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Beauty Set by Irvie',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                            color: const Color(0xff000000),
                                            fontSize: 20,
                                          ),
                                    ),
                                    const SizedBox(height: 2),
                                    const Text(
                                      'Irview group official',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff848C8B),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 14),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Rp 178.000',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                              color: const Color(0xff000000),
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      const SizedBox(height: 2),
                                      const Text(
                                        'Harga Customer',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff848C8B),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 1,
                                    height: 40,
                                    color: const Color(0xff848C8B),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Rp 178.000',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                              color: const Color(0xff000000),
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                      const SizedBox(height: 2),
                                      const Text(
                                        'Harga Customer',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff848C8B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              Container(
                                width: Get.width,
                                height: 40,
                                decoration: const BoxDecoration(
                                  color: Color(0xffECE806),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Komisi',
                                          style: TextStyle(
                                            color: Color(0xff363939),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' Rp 35.000',
                                          style: TextStyle(
                                            color: Color(0xff363939),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' (20%)',
                                          style: TextStyle(
                                            color: Color(0xff363939),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            border: Border.all(
                              color: const Color(0xffE2E8F0),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Ukuran',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Obx(
                                      () => Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              controller.selectedSize.value = 0;
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 10,
                                                vertical: 5,
                                              ),
                                              decoration: BoxDecoration(
                                                color: const Color(0xffE6E7E7),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                border: controller.selectedSize
                                                            .value ==
                                                        0
                                                    ? Border.all(
                                                        color: const Color(
                                                            0xff242626),
                                                        width: 2,
                                                      )
                                                    : null,
                                              ),
                                              child: const Text(
                                                'Paket 1',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          GestureDetector(
                                            onTap: () {
                                              controller.selectedSize.value = 1;
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 10,
                                                vertical: 5,
                                              ),
                                              decoration: BoxDecoration(
                                                color: const Color(0xffE6E7E7),
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                border: controller.selectedSize
                                                            .value ==
                                                        1
                                                    ? Border.all(
                                                        color: const Color(
                                                            0xff242626),
                                                        width: 2,
                                                      )
                                                    : null,
                                              ),
                                              child: const Text(
                                                'Paket 2',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 14),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Warna',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Obx(
                                      () => Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              controller.selectedColor.value =
                                                  0;
                                            },
                                            child: Container(
                                              width: 44,
                                              height: 44,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: const Color(0xffDDB69A),
                                                border: controller.selectedColor
                                                            .value ==
                                                        0
                                                    ? Border.all(
                                                        color: const Color(
                                                            0xff242626),
                                                        width: 2,
                                                      )
                                                    : null,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          GestureDetector(
                                            onTap: () {
                                              controller.selectedColor.value =
                                                  1;
                                            },
                                            child: Container(
                                              width: 44,
                                              height: 44,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: const Color(0xff5B3E36),
                                                border: controller.selectedColor
                                                            .value ==
                                                        1
                                                    ? Border.all(
                                                        color: const Color(
                                                            0xff242626),
                                                        width: 2,
                                                      )
                                                    : null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 14),
                                RichText(
                                    text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Stok : ',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff242626),
                                      ),
                                    ),
                                    TextSpan(
                                      text: '99+ pcs',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff242626),
                                      ),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xffffffff),
                            border: Border.symmetric(
                              horizontal: BorderSide(
                                color: Color(0xffE2E8F0),
                                width: 1,
                              ),
                            ),
                          ),
                          margin: EdgeInsets.zero,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Obx(
                              () => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Deskripsi',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(
                                        Icons.copy,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(
                                    '*New Material*\n'
                                    'Terbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan.\n'
                                    'Menggunakan fit Relaxed Fit.\n'
                                    '-\n'
                                    'SIZE CHART RELAXED SHIRT....\n'
                                    '-\n'
                                    'Detail tambahan:\n'
                                    '- Tersedia dalam berbagai ukuran dari S hingga XL.\n'
                                    '- Tersedia dalam berbagai warna: Putih, Hitam, Abu-abu, dan Biru Navy.\n'
                                    '- Memiliki ketahanan warna yang baik meskipun dicuci berulang kali.\n'
                                    '- Material yang ramah lingkungan dan mudah didaur ulang.\n'
                                    '- Jahitan yang kuat dan rapi untuk ketahanan jangka panjang.\n'
                                    '- Desain yang modern dan stylish cocok untuk berbagai kesempatan.',
                                    maxLines:
                                        controller.isExpanded.value ? 20 : 6,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 8.0),
                                  GestureDetector(
                                    onTap: () {
                                      controller.isExpanded.value =
                                          !controller.isExpanded.value;
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          controller.isExpanded.value
                                              ? 'Sembunyikan'
                                              : 'Selengkapnya',
                                          style: const TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Icon(
                                          controller.isExpanded.value
                                              ? Icons.keyboard_arrow_up
                                              : Icons.keyboard_arrow_down,
                                          color: Colors.blue,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Produk lain dari Irvie group official',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                height: Get.height * 0.325,
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(right: 20),
                                      child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                width: 160,
                                                height: 160,
                                                decoration:
                                                    const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(6),
                                                    topRight:
                                                        Radius.circular(6),
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/product/product-image.png',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 6,
                                                left: 10,
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 10,
                                                    vertical: 5,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: const Color(
                                                            0xff0EA5E9)
                                                        .withOpacity(0.8),
                                                    borderRadius:
                                                        const BorderRadius
                                                            .all(
                                                      Radius.circular(6),
                                                    ),
                                                  ),
                                                  child: RichText(
                                                      text: const TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '30% ',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: 'Komisi',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                                ),
                                              ),
                                              index % 2 == 0
                                                  ? const SizedBox()
                                                  : Positioned(
                                                      top: 0,
                                                      right: 7,
                                                      child: ClipPath(
                                                        clipper:
                                                            BadgeClipper(),
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 5,
                                                          ),
                                                          alignment: Alignment
                                                              .topCenter,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0xffECE806),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  2),
                                                            ),
                                                          ),
                                                          width: 32,
                                                          height: 32,
                                                          child: const Text(
                                                            'New',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff000000),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Beauty Set by Irvie',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Harga Reseller',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Rp 178.000',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                              0xff848C8B),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 1),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: Color(
                                                              0xffFFC107),
                                                          size: 12,
                                                        ),
                                                        SizedBox(width: 4),
                                                        Text(
                                                          '99+ pcs',
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500,
                                                            color: Color(
                                                                0xff0EA5E9),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 4),
                                              //elevated button with color black with text bagikan produk (white) with max height
                                              SizedBox(
                                                width: 160,
                                                height: 30,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton
                                                      .styleFrom(
                                                    backgroundColor:
                                                        const Color(
                                                            0xff242626),
                                                    foregroundColor:
                                                        Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(6),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    'Bagikan Produk',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Produk Serupa',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                height: Get.height * 0.325,
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(right: 20),
                                      child: Column(
                                        children: [
                                          Stack(
                                            children: [
                                              Container(
                                                width: 160,
                                                height: 160,
                                                decoration:
                                                    const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(6),
                                                    topRight:
                                                        Radius.circular(6),
                                                  ),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/product/product-image.png',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                bottom: 6,
                                                left: 10,
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    horizontal: 10,
                                                    vertical: 5,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: const Color(
                                                            0xff0EA5E9)
                                                        .withOpacity(0.8),
                                                    borderRadius:
                                                        const BorderRadius
                                                            .all(
                                                      Radius.circular(6),
                                                    ),
                                                  ),
                                                  child: RichText(
                                                      text: const TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: '30% ',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: 'Komisi',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  )),
                                                ),
                                              ),
                                              index % 2 == 0
                                                  ? Positioned(
                                                      top: 0,
                                                      right: 7,
                                                      child: ClipPath(
                                                        clipper:
                                                            BadgeClipper(),
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 5,
                                                          ),
                                                          alignment: Alignment
                                                              .topCenter,
                                                          decoration:
                                                              const BoxDecoration(
                                                            color: Color(
                                                                0xffECE806),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(
                                                              Radius.circular(
                                                                  2),
                                                            ),
                                                          ),
                                                          width: 32,
                                                          height: 32,
                                                          child: const Text(
                                                            'New',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff000000),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  : const SizedBox(),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Beauty Set by Irvie',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Harga Reseller',
                                                        style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Rp 178.000',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Color(
                                                              0xff848C8B),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 1),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.star,
                                                          color: Color(
                                                              0xffFFC107),
                                                          size: 12,
                                                        ),
                                                        SizedBox(width: 4),
                                                        Text(
                                                          '99+ pcs',
                                                          style: TextStyle(
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500,
                                                            color: Color(
                                                                0xff0EA5E9),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 4),
                                              //elevated button with color black with text bagikan produk (white) with max height
                                              SizedBox(
                                                width: 160,
                                                height: 30,
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton
                                                      .styleFrom(
                                                    backgroundColor:
                                                        const Color(
                                                            0xff242626),
                                                    foregroundColor:
                                                        Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius
                                                              .circular(6),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    'Bagikan Produk',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              //make 2 button with flex 2 and 1
                              Expanded(
                                flex: 2,
                                child: SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                        const Color(0xffFFFFFF),
                                        foregroundColor:
                                        const Color(0xff242626),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          side: const BorderSide(
                                            color: Color(
                                                0xff242626), // Border color
                                            width: 1, // Border width
                                          ),
                                        ),
                                        padding: EdgeInsets.zero),
                                    child: const Text(
                                      'Tambahkan ke toko',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                      ),
                                      backgroundColor:
                                      const Color(0xff242626),
                                      foregroundColor:
                                      const Color(0xffffffff),
                                    ),
                                    child: const Icon(
                                      Icons.shopping_cart,
                                      size: 20,
                                    ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/product/icons/arrow-left.png',
                  width: 30,
                  height: 30,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/product/icons/import.png',
                      width: 30,
                      height: 30,
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/images/product/icons/shopping-cart.png',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BadgeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height - 10);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
