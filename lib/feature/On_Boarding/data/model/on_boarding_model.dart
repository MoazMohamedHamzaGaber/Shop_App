class OnBoardingModel {
  late String title;
  late String body;
  late String image;

  OnBoardingModel({
    required this.title,
    required this.body,
    required this.image
  });

  static List<OnBoardingModel> onBoardingModel = [
    OnBoardingModel(
      title: 'Choose your products',
      body: 'Search and choose the products you like from various brands. Explore the brands you like and place the orders.',
      image: 'assets/images/Rectangle.jpg',
    ),
    OnBoardingModel(
      title: 'Make Payment',
      body: 'Make online payments using net banking or any UPl payment methods you can. Cash on delivery is also available.',
      image: 'assets/images/Rectangle 289 (4).jpg',
    ),
    OnBoardingModel(
      title: 'Get your order on time',
      body: 'We provide the fast delivery as possible.Get your orders delivered a on time and get it delivered safe.',
      image: 'assets/images/Rectangle 289 (3).jpg',
    ),

  ];
}