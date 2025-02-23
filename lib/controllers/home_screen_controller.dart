import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  // List for Carousel Items
  final List<Map<String, dynamic>> carouselItems = [
    {
      'image': '../assets/images/carousel_burger_image.png',
      'title': 'Special Offer 1',
      'description': 'Get 50% off on your first order!',
    },
    {
      'image': '../assets/images/carousel_burger_image.png',
      'title': 'Special Offer 2',
      'description': 'Buy one, get one free!',
    },
    {
      'image': '../assets/images/carousel_burger_image.png',
      'title': 'Special Offer 3',
      'description': 'Free delivery on orders above \$20!',
    },
  ];

  
  // List for Food Tabs
  final List<String> foodTabs = ['Burgers', 'Pizza', 'Pasta', 'Sushi', 'Desserts'];

  // List for Product Cards
  final List<Map<String, dynamic>> productItems = [
    {
      'image': '../assets/images/Burger_1.png',
      'name': 'Classic Burger',
      'ingredients': 'Beef, Cheese, Lettuce',
      'price': 10.99,
      'rating': 4.5,
    },
    {
      'image': '../assets/images/Burger_2.png',
      'name': 'Cheese Burger',
      'ingredients': 'Beef, Double Cheese, Pickles',
      'price': 12.99,
      'rating': 4.7,
    },
    {
      'image': '../assets/images/Burger_3.png',
      'name': 'Spicy Burger',
      'ingredients': 'Chicken, Spicy Sauce, Onions',
      'price': 11.99,
      'rating': 4.3,
    },
  ];

  // List for Popular Menu Items
  final List<Map<String, dynamic>> popularItems = [
    {
      'image': '../assets/images/pizza_1.png',
      'name': 'Pepperoni Pizza',
      'description': 'Classic pepperoni pizza with extra cheese',
      'price': 14.99,
    },
    {
      'image': '../assets/images/pizza_1.png',
      'name': 'Sushi Platter',
      'description': 'Assorted sushi with soy sauce and wasabi',
      'price': 18.99,
    },
    {
      'image': '../assets/images/pizza_1.png',
      'name': 'Chocolate Cake',
      'description': 'Rich chocolate cake with frosting',
      'price': 8.99,
    },
  ];
}