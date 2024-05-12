class DetailsCategoryModel
{
  late String name;
  late double price;
  late String image;
  double oldPrice=0;
  String desc='JBL Charge 5 - Portable Bluetooth Speaker with deep bass, IP67 waterproof and dustproof, 20 hours of playtime, built-in powerbank, in black';
  double discount=0;
  //int id=50;

  DetailsCategoryModel({
    required this.name,
    required this.price,
    required this.image,
    // this.oldPrice,
    // this.desc,
});

  static List<DetailsCategoryModel>electronicModel=[
    DetailsCategoryModel(
      name: '20mm Thickness Soft Silicone Replacement Bands Set Compatible with Samsung Galaxy Watch 4 40 44mm, Galaxy Watch 4 Classic 42 46mm, Watch Active 2 40 44mm, Watch 3 41mm (Cashmere Color)',
      price: 450,
      image: 'https://m.media-amazon.com/images/I/61n9JbdWOML.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Oxualyn Hard Rugged Shock Absorption Sport Design Case for Apple Watch Ultra 49mm with Screen Protector, Matte Black Tempered Glass and PC Cover',
      price: 84 ,
      image: 'https://m.media-amazon.com/images/I/71I8ToO61aL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Smart touch wireless headphones with original Air Pro case',
      price: 400,
      image: 'https://m.media-amazon.com/images/I/510xWR04llL.__AC_SY300_SX300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'HERO W-8',
      price: 1650,
      image: 'https://m.media-amazon.com/images/I/41LIN-21c7L.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: '8.5 inch Digital Writing and Drawing Tablet Electronic Handwriting and Graphics Tablet LCD Pink Color',
      price: 89,
      image: 'https://m.media-amazon.com/images/I/51NrRdeH0XL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'bixolone b300',
      price: 7500,
      image: 'https://m.media-amazon.com/images/I/61ejjpo5x2L.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Electronics - Smart Accessories - Dustproof Silicone Earphone Case for Anker Liberty Air 2 Pro',
      price: 118,
      image: 'https://m.media-amazon.com/images/I/519rPcP-vuL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Two-Way Speaker from Hero Electronics HERO-CS301',
      price: 1800,
      image: 'https://m.media-amazon.com/images/I/61oI6UQ6kPL._AC_SX679_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Ariamon Cooling Pad with 4 Fans for Laptop, Notebook, iPad and Computer 10-15.6 inch',
      price: 384,
      image: 'https://m.media-amazon.com/images/I/71apkkhPhML.__AC_SY300_SX300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'LDNIO USB Charger Cable 3 in 1 Model LC95 Type C 3.4A',
      price: 89,
      image: 'https://m.media-amazon.com/images/I/61LG1aC9vQL.__AC_SY300_SX300_QL70_ML2_.jpg',
    ),
  ];

  static List<DetailsCategoryModel>clothesModel=[
    DetailsCategoryModel(
      name: 'BEER WOLF bomber jacket',
      price: 3985,
      image: 'https://is4.revolveassets.com/images/p4/n/uv/TLAU-WO16M_V1.jpg',
    ),
    DetailsCategoryModel(
      name: 'Clothes Metal Stand',
      price: 305,
      image: 'https://m.media-amazon.com/images/I/61ybkEd3FKL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Wooden Suit Hanger | Hangers 6-pcs',
      price: 111,
      image: 'https://m.media-amazon.com/images/I/51i+OFqtncL._AC_SX300_SY300_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Homehacks 3-pack clothes storage,foldable blanket storage bags,storage containers for organizing, clothing, bedroom, comforter, closet, dorm, sweater, quilts, organizer, grey',
      price: 174,
      image: 'https://m.media-amazon.com/images/I/814XEnutrmL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'SheIn Women\'s Graphic Long Sleeve Drawstring Hoodies Zip Up Hooded Sweatshirt Jackets',
      price: 1005,
      image: 'https://m.media-amazon.com/images/I/61i5wtFVasL._AC_SY741_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Aminery Foldable Clothes Storage Bags, [60 X 40 X 36cm]',
      price: 110,
      image: 'https://m.media-amazon.com/images/I/61wVJoPMOuL.__AC_SY300_SX300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Large Capacity Clothing Storage Bag for Comforters, Blankets, Bedding, Duvets, Clothes, Quilts, Pillows, Sweaters',
      price: 99,
      image: 'https://m.media-amazon.com/images/I/61KE5ApKqeL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Red Dot Unisex 8822RD Sweatpants',
      price: 257,
      image: 'https://m.media-amazon.com/images/I/61rnB0vdXxL._AC_SY741_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Romba Men\'s Cotton Cargo Cargo Pants with Side Pockets',
      price: 179,
      image: 'https://m.media-amazon.com/images/I/615+Uyv8NSL._AC_SX569_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Men\'s Cotton Crew Neck Short T-Shirt, Maroon, 4XL',
      price: 79,
      image: 'https://m.media-amazon.com/images/I/41z55QMPrTL._AC_SX679_.jpg',
    ),
  ];

  static List<DetailsCategoryModel>sportsModel=[
    DetailsCategoryModel(
      name: 'FIFA 23 Legacy Edition - Nintendo Switch',
      price: 2034,
      image: 'https://m.media-amazon.com/images/I/71HCNwy6xLL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Sport Brah Men (Medium)',
      price: 164,
      image: 'https://m.media-amazon.com/images/I/51d+euNgDqL._AC_SY300_SX300_.jpg',
    ),
    DetailsCategoryModel(
      name: 'NonEcho Men Sauna Vest Hot Sweat Waist Trainer Corset Neoprene Tank Top Shapewear Slimming Shirt Workout Suit',
      price: 358,
      image: 'https://m.media-amazon.com/images/I/71yaf1UO82L._AC_SX679_.jpg',
    ),
    DetailsCategoryModel(
      name: 'CF-58 Sport Slimming Bodysuit (Black, XL)',
      price: 209,
      image: 'https://m.media-amazon.com/images/I/412r4p+4JNL._AC_SY741_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Adidas MH BP BLACK NOT SPORTS SPECIFIC BACKPACK HN8190 for Unisex black size NS',
      price: 1329,
      image: 'https://m.media-amazon.com/images/I/71iUX11BOLL._AC_SX679_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Trung Men\'s Summer Outdoor Casual Cotton Novelty Design Sport',
      price: 249,
      image: 'https://m.media-amazon.com/images/I/615p8LzfchL._AC_SX679_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Unisex Casual Sports Summer Cap Hat',
      price: 57,
      image: 'https://m.media-amazon.com/images/I/41FA7Dxn46L._AC_SY741_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Switch Sports',
      price: 2650,
      image: 'https://m.media-amazon.com/images/I/61ZqX9FgOSL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Water Bottle, Sports Water Bottle 1L with Motivational Time Markings and Filter, Leakproof Drinks Bottle with BPA-Free for Gym, School, Yoga, Cycling, Running, Camping (Blue Gradient)',
      price: 144,
      image: 'https://m.media-amazon.com/images/I/71suRL+l7EL._AC_SY300_SX300_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Diadora For Men Sports Pants Black',
      price: 299,
      image: 'https://m.media-amazon.com/images/I/41jOIiWA2BL._AC_SX679_.jpg',
    ),
  ];

  static List<DetailsCategoryModel>lightingModel=[
    DetailsCategoryModel(
      name: 'sun power Street & Area Lighting Grey',
      price: 2100,
      image: 'https://m.media-amazon.com/images/I/41ZnYZRE4dL.__AC_SY445_SX342_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Solar Powered Garden Plate 5W Worm Lighting',
      price: 550,
      image: 'https://m.media-amazon.com/images/I/41a8YRAP7LL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Decorating stairs, exterior corridors, gardens and gardens, lighting yellow and tumor',
      price: 215,
      image: 'https://m.media-amazon.com/images/I/41Iqu1sKzBS.__AC_SY445_SX342_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: '3 pieces bomb vintage ceiling decorative lighting unit',
      price: 1280,
      image: 'https://m.media-amazon.com/images/I/61d-POLaCHL.__AC_SY445_SX342_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Modern hanging ball rings chandelier pendant - Black and Linen',
      price: 199,
      image: 'https://m.media-amazon.com/images/I/61-mvBObwPL.__AC_SX342_SY445_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Pretmess Hollywood Style Vanity Mirror Lights Kit, Adjustable Color and Brightness with 10 LED Light Bulbs, Lighting Fixture Strip',
      price: 7234,
      image: 'https://m.media-amazon.com/images/I/61b4sp5x56L.__AC_SY445_SX342_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Lura Lighting Unit - Black',
      price: 119,
      image: 'https://m.media-amazon.com/images/I/511h0++QfdL._AC_SY300_SX300_.jpg',
    ),
    DetailsCategoryModel(
      name: '4.5v 1W COB LED Puck Light 6 Pack with Remote Controller Brightness Adjustable Wireless Dimmable Touch Sensor Control Night Lamp Under Cabinet Lighting Battery Powered Operated for Cabinet Wall',
      price: 230,
      image: 'https://m.media-amazon.com/images/I/61VufYMsdNL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Home Lighting LED Night Light (3W)',
      price: 100,
      image: 'https://m.media-amazon.com/images/I/51jZsf9VpOL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Solar Flame Led Light With Sensor Activated - Waterproof Solar Garden Lights In-Ground Landscape Lighting for Pathway,Yard,Deck,Lawn,Patio,Walkway(NB: There is a small switch inside)',
      price: 169,
      image: 'https://m.media-amazon.com/images/I/51VtMd6NwQL.__AC_SY445_SX342_QL70_ML2_.jpg',
    ),
  ];

  static List<DetailsCategoryModel>coronaModel=[
    DetailsCategoryModel(
      name: 'FIFA 23 Legacy Edition - Nintendo Switch',
      price: 2034,
      image: 'https://m.media-amazon.com/images/I/71HCNwy6xLL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Sport Brah Men (Medium)',
      price: 164,
      image: 'https://m.media-amazon.com/images/I/51d+euNgDqL._AC_SY300_SX300_.jpg',
    ),
    DetailsCategoryModel(
      name: 'NonEcho Men Sauna Vest Hot Sweat Waist Trainer Corset Neoprene Tank Top Shapewear Slimming Shirt Workout Suit',
      price: 358,
      image: 'https://m.media-amazon.com/images/I/71yaf1UO82L._AC_SX679_.jpg',
    ),
    DetailsCategoryModel(
      name: 'CF-58 Sport Slimming Bodysuit (Black, XL)',
      price: 209,
      image: 'https://m.media-amazon.com/images/I/412r4p+4JNL._AC_SY741_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Adidas MH BP BLACK NOT SPORTS SPECIFIC BACKPACK HN8190 for Unisex black size NS',
      price: 1329,
      image: 'https://m.media-amazon.com/images/I/71iUX11BOLL._AC_SX679_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Trung Men\'s Summer Outdoor Casual Cotton Novelty Design Sport',
      price: 249,
      image: 'https://m.media-amazon.com/images/I/615p8LzfchL._AC_SX679_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Unisex Casual Sports Summer Cap Hat',
      price: 57,
      image: 'https://m.media-amazon.com/images/I/41FA7Dxn46L._AC_SY741_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Switch Sports',
      price: 2650,
      image: 'https://m.media-amazon.com/images/I/61ZqX9FgOSL.__AC_SX300_SY300_QL70_ML2_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Water Bottle, Sports Water Bottle 1L with Motivational Time Markings and Filter, Leakproof Drinks Bottle with BPA-Free for Gym, School, Yoga, Cycling, Running, Camping (Blue Gradient)',
      price: 144,
      image: 'https://m.media-amazon.com/images/I/71suRL+l7EL._AC_SY300_SX300_.jpg',
    ),
    DetailsCategoryModel(
      name: 'Diadora For Men Sports Pants Black',
      price: 299,
      image: 'https://m.media-amazon.com/images/I/41jOIiWA2BL._AC_SX679_.jpg',
    ),
  ];
}