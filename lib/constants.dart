import 'package:flutter/material.dart';

Color kPrimaryColor = Color(0xff283655);
Color kHomeScreenBackgroundColor = Colors.white;
Color kCardItemBackgroundColor = Color(0xffB2DBD5);

Color kCardUnselectedColorV = Colors.white;
Color kCardUnselectedTextColorV = Colors.black;
Color kCardSelectedColorV = Color(0xff1E1F26);
Color kCardSelectedTextColorV = Colors.white;

Color kCardUnselectedColorF = Colors.white;
Color kCardUnselectedTextColorF= Colors.black;
Color kCardSelectedColorF = Color(0xff1E1F26);
Color kCardSelectedTextColorF = Colors.white;

Color kCardColorV = kCardUnselectedColorV;
Color kCardTextColorV = kCardUnselectedTextColorV;

Color kCardColorF = kCardUnselectedColorF;
Color kCardTextColorF = kCardUnselectedTextColorF;

Color kBottomNavigationColor = Color(0xffFFA577);

List<BoxShadow> kShadowList = [
  BoxShadow(
    color: Colors.grey[300],
    blurRadius: 24.0,
    offset: Offset(0, 10),
  ),
];

var kVegetablesList = [
  {'name': 'Paneer', 'iconPath' : 'images/vegetables/paneer.png'},
  {'name': 'Rajma', 'iconPath' : 'images/vegetables/rajma.png'},
  {'name': 'Chhole', 'iconPath' : 'images/vegetables/chhole.png'},
  {'name': 'Bhindi', 'iconPath' : 'images/vegetables/bhindi.png'},
  {'name': 'Karela', 'iconPath' : 'images/vegetables/karela.png'},
  {'name': 'Lauki', 'iconPath' : 'images/vegetables/lauki.png'},
  {'name': 'Pea (Matar)', 'iconPath' : 'images/vegetables/pea.png'},
  {'name': 'Potato', 'iconPath' : 'images/vegetables/potato.png'},
  {'name': 'Pepper', 'iconPath' : 'images/vegetables/pepper.png'},
  {'name': 'Pumpkin', 'iconPath' : 'images/vegetables/pumpkin.png'},
  {'name': 'Cabbage', 'iconPath' : 'images/vegetables/cabbage.png'},
  {'name': 'Broccoli', 'iconPath' : 'images/vegetables/broccoli.png'},
  {'name': 'Parwal', 'iconPath' : 'images/vegetables/parwal.png'},
  {'name': 'Cauliflower', 'iconPath' : 'images/vegetables/cauliflower.png'},
  {'name': 'Spinach', 'iconPath' : 'images/vegetables/spinach.png'},
];

var kFruitsList = [
  {'name': 'Papaya', 'iconPath' : 'images/fruits/papaya.png'},
  {'name': 'Brinjal', 'iconPath' : 'images/fruits/brinjal.png'},
  {'name': 'Tomato', 'iconPath' : 'images/fruits/tomato.png'},
  {'name': 'Mango', 'iconPath' : 'images/fruits/mango.png'},
  {'name': 'Banana', 'iconPath' : 'images/fruits/banana.png'},
];

var kNonVegList = [
  {'name': 'Chicken', 'iconPath' : 'images/non-veg/chicken.png'},
  {'name': 'Fish', 'iconPath' : 'images/non-veg/fish.png'},
  {'name': 'Meat', 'iconPath' : 'images/non-veg/meat.png'},
  {'name': 'Pigeon', 'iconPath' : 'images/non-veg/pigeon.png'},
  {'name': 'Beef', 'iconPath' : 'images/non-veg/beef.png'},
  {'name': 'Crab', 'iconPath' : 'images/non-veg/crab.png'},
  {'name': 'Rabbit', 'iconPath' : 'images/non-veg/rabbit.png'},
  {'name': 'Pork', 'iconPath' : 'images/non-veg/pork.png'},
];

Map<String, List<String>> mp = {

  // vegetables
  "Paneer" : [
    'Shahi Paneer',
    'Palak Paneer',
    'Panner Butter Masala',
    'Matar Paneer',
    'Aloo Matar Paneer',
    'Paneer Tikka',
    'Paneer Tikka Masala',
    'Paneer Tikka Pizza',
    'Paneer Malai Tikka'
    'Tawa Paneer Masala',
    'Kadhai Paneer',
    'Achari Paneer',
    'Achari Paneer Tikka',
    'Hariyali Paneer Tikka',
    'Paneer Pasanda',
    'Paneer Makhani',
    'Aloo Paneer',
    'Aloo Paneer Tikki',
    'Methi Paneer',
    'Methi Malai Paneer',
    'Methi Palak Saag Paneer',
    'Chilli Paneer',
    'Paneer Bhurji',
    'Paneer Palak Bhurji',
    'Paneer Peas Bhurji',
    'Paneer Paratha',
    'Malai Paneer',
    'Paneer Korma',
    'Paneer Manchurian',
    'Paneer Koliwada',
    'Paneer Barfi',
    'Chhola Paneer',
    'Paneer Khurchan',
    'Paneer Amritsari',
    'Paneer Kolhapuri',
    'Paneer Fry',
    'Paneer Pakoda',
    'Mushroom Paneer',
    'Paneer Jalfrezi',
    'Paneer Schezwan',
    'Paneer Kali Mirch',
    'Paneer Cheese Toast',
    'Paneer Sandwich',
    'Paneer Bhurji Sandwich',
    'Paneer Matar Toast Sandwic',
    'Paneer Bread Roll (Baked)',
    'Paneer Pav Bhaji',
    'Paneer Popcorn',
    'Paneer Cutlet With Mix Vegetables',
    'Paneer Pizza',
    'Paneer Biryani',
    'Paneer Pulao',
  ],
  "Rajma" : [
    'Rajma Curry',
    'Kashmiri Rajma',
    'Refried Beans',
    'Rajma Pakodas',
    'Rajma Kebab',
    'Rajma Aur Kele Ke Kebab',
    'Makhmali Rajma Kebab',
    'Rajma Galouti Kebab',
    'Rajma Aloo Cutlet',
    'Oats and Rajma Cutlet',
    'Chatpata Rajma Wrap',
    'Grilled Rajma Masala Sandwich',
  ],
  "Bhindi" : [
    'Bhindi Masala',
    'Kurkuri Bhindi | Okra Fry',
    'Vendakkai Poriyal',
    'Vendakkai Sambar',
    'Bhindi Fry',
    'Bharli Bhendi',
    'Shahi Bhind',
    'Bharwa Bhindi',
    'Lahsuni Bhindi',
    'Bhindi Do Pyaza',
    'Aloo Bhindi',
    'Besan Bhindi',
    'Bhindi Nariyal Sabzi',
    'Bhindi Ka Salan',
    'Bhindi Rice',
  ],
  "Karela" : [
    'Sukhi Karela Sabzi',
    'Onion and Karela Sabzi',
    'Karela and Capsicum sabzi',
    'Masala Karela',
    'Stuffed Karela in Makhani Gravy',
    'Masala Bharwan Karela',
    'Karela Bhindi Masala',
    'Karela Kadhi',
    'Karega Mauthias',
    'Karela Peel Kadhi',
    'Crispy Karela',
    'Karela Paratha',
    'Karela Theplas',
    'Karela Chips',
    'Karela Tikkis',
    'Malai Karela',
    'Karela Cutlet',
    'Karela Rice',
  ],
  "Lauki" : [
    'Lauki Kofta Curry',
    'Bharwa Lauki',
    'Doodhi Theplas',
    'Doodhi Muthia',
    'Lauki ki Kheer',
    'Doodhi Ka Halwa',
    'Bottle Gourd, Carrot & Beetroot Halwa',
    'Lauki ka Raita',
    'Lauki Aur Pudine ka Raita',
    'Sambhar',
  ],
  "Pepper" : [
    'Capsicum curry',
    'Capsicum fry',
    'Aloo Capsicum',
    'Stuffed Capsicum',
    'Capsicum Salan'
    'Pepper Panner',
    'Capsicum Chutney',
    'Red Capsicum Chutney',
    'Peanut Capsicum Chutney'
    'Capsicum Cheese Toast Sandwich',
    'Capsicum Rice',
  ],
  "Chhole" : ['Chhola', 'Chhola Paneer'],
  "Salad" : ['fruit salad', 'papad'],

  // non-veg

  "Chicken" : [
    'Amritsari chicken masala',
    'Teekha murg',
    'Murg malaiwala',
    'Chicken chettinad',
    'Kerala chicken roast',
    'Kadhai chicken',
    'Chicken chilli',
    'Chicken lollipop',
    'Butter chicken',
    'Chicken dum biryani',
    'Roasted chicken masala',
    'Dahi chicken',
  ],

  "Fish" : [
    'Masala fried pomfret',
    'Fish curry',
    'Fish curry without oil',
    'Popcorn crusted fish fingers',
    'Fish cutlets',
    'Hariyali machhli with pulao',
    'Thai steamed fish',
    'Chettinad fish fry',
    'Fish duglere',
  ],

  "Meat" : [
    'Laziz lamb handi',
    'Galouti kebab',
    'Khatta meat',
    'Parsi mutton cutlets',
    'Rajsthani laal maas',
    'Bhindiwala meat',
    'Dhabe da keema',
    'Rogan josh',
    'Badami lamb korma',
    'Awadhi mutton biryani',
    'Sali boti',
    'Mutton curry',
    'Kosha mangsho',
  ],

  "Pigeon" : [
    'Roasted wood pigeon',
    'Pigeon pies',
    'Pigeon & hedgerow salad',
    'Pigeon & beetroot salad',
  ],

  "Beef" : [
    'Indian fried beef',
    'Beef curry',
    'Beef dry roast',
    'South indian beef curry',
    'Indian spiced Beef stew',
    'Indian spiced Beef Kababs',
  ],

  "Crab" : [
    'classic crab boil',
    'avocado crab boats',
    'hot crab pinwheels',
    'sweet potato and crab',
    'spicy crab salad',
    'crabmeat boats',
    'baked crab rangoons',
    'crab cake',
    'crab crescents',
    'curried crab spread',
  ],

  "Rabbit" : [
    'Stuffed Rabbit Recipes',
    'Rabbit in Mustard Sauce',
    'Braised Rabbit Pie',
    'Kentucky Fried Rabbit',
    'Rabbit Sausage',
    'Slow Roasted Rabbit',
  ],

  "Pork" : [
    'roast pork belly',
    'thai pork salad',
    'pork curry',
    'pork vindaloo',
    'jamaican pork chops',
    'lemon pork',
    'pork sorpotel',
    'banh cuon',
    'pork chops recipe',
  ],
};