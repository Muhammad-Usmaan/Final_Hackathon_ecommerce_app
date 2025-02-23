import 'package:final_hackathon_app/Views/product_detail_screen.dart';
import 'package:final_hackathon_app/controllers/home_screen_controller.dart';
import 'package:final_hackathon_app/custom%20widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, color: Colors.red),
              SizedBox(width: 8),
              Text(
                "Sir Adam jee Institute",
               
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                  // Add your profile image
                  ),
            ),
          ],
        ),
        drawer: MyDrawer(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Search Bar
                _buildSearchBar(),
                SizedBox(height: 20),

                // Carousel with Indicators
                _buildCarousel(),
                SizedBox(height: 20),

                // Horizontal Food Tabs
                _buildFoodTabs(),
                SizedBox(height: 20),

                // Horizontal Product Cards
                Text(
                  'Burgers', // Dynamic based on selected tab
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                _buildProductCards(),
                SizedBox(height: 20),

                // Popular Menu Items
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Menu Items',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {
                        // Handle "See All" button press
                      },
                      child: Text('See All'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                _buildPopularMenuItems(),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _buildSearchBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget _buildCarousel() {
    return Column(
      children: [
        Container(
          height: 150,
          child: PageView.builder(
            itemCount: homeScreenController.carouselItems.length,
            itemBuilder: (context, index) {
              return _buildCarouselItem(
                  homeScreenController.carouselItems[index]);
            },
          ),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              List.generate(homeScreenController.carouselItems.length, (index) {
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == 0
                    ? Colors.redAccent
                    : Colors.grey, // Change index logic as needed
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildCarouselItem(Map<String, dynamic> item) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.redAccent,
          Colors.redAccent,
           Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -11,
            right: -37,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight:
                    Radius.circular(100), // Add radius to bottom-right corner
              ),
              child: Image.asset(
                item['image'],
                width: 289,
                height: 175,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['title'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(height: 8),
                Text(
                  item['description'],
                  style: TextStyle(fontSize: 14,color: Colors.white),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Handle "Shop Now" button press
                  },
                  child: Text('Shop Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodTabs() {
    return Container(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeScreenController.foodTabs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Chip(
              label: Text(homeScreenController.foodTabs[index], style: GoogleFonts.poppins(
                color: Colors.white
              ),),
              backgroundColor: index == 0
                  ? Colors.redAccent
                  : Colors.grey, // Change index logic as needed
            ),
          );
        },
      ),
    );
  }

  Widget _buildProductCards() {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeScreenController.productItems.length,
        itemBuilder: (context, index) {
          return _buildProductCard(homeScreenController.productItems[index]);
        },
      ),
    );
  }

  Widget _buildProductCard(Map<String, dynamic> item) {
    return InkWell(
      onTap: (){
        Get.to(()=> ProductDetailScreen(item: item,));
      },
      child: Container(
        width: 150,
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  child: Image.asset(
                    item['image'],
                    height: 80,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16),
                      Text(
                        item['rating'].toString(),
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['name'],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    item['ingredients'],
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${item['price'].toString()}',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: Icon(Icons.add_circle, color: Colors.blue),
                        onPressed: () {
                          // Handle add to cart
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularMenuItems() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: homeScreenController.popularItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(
            homeScreenController.popularItems[index]['image'],
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(homeScreenController.popularItems[index]['name']),
          subtitle:
              Text(homeScreenController.popularItems[index]['description']),
          trailing: Text(
              '\$${homeScreenController.popularItems[index]['price'].toString()}'),
        );
      },
    );
  }
}
