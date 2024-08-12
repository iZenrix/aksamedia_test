class OnboardingModel {
  final String title;
  final String description;
  final String imagePath;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

final List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: "Gratis Materi Belajar\nMenjadi Seller Handal",
    description: "Nggak bisa jualan?\nJangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya",
    imagePath: "assets/images/onboarding/content-image-1.jpeg",
  ),
  OnboardingModel(
    title: "Ribuan Produk\ndengan Kualitas Terbaik",
    description: "Tokorame menyediakan ribuan produk dengan\nkualitas derbaik dari seller terpercaya",
    imagePath: "assets/images/onboarding/content-image-2.jpeg",
  ),
  OnboardingModel(
    title: "Toko Online Unik\nUntuk Kamu Jualan",
    description: "Subdomain unik dan toko online profesional\nsiap pakai",
    imagePath: "assets/images/onboarding/content-image-3.jpeg",
  ),
];