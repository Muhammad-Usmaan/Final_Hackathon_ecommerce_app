import 'package:final_hackathon_app/Views/accounts/login_tab.dart';
import 'package:final_hackathon_app/Views/accounts/signup_tab.dart';
import 'package:final_hackathon_app/custom%20widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.85,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: const TabBottomSheet(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          spacing: 15,
          children: [
            Container(
              width: double.infinity,
              height: screenHeight * 0.65,
              child: Image.asset('../assets/images/Login_signup_back.png'),
            ),
            Text('Good food at a cheap price',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            Text('You can eat at expensive restaurants with affordable price'),
           
            MyButton(onPressed:()=> _showBottomSheet(context), text: "Next")
          ],
        ),
      ),
    );
  }
}

class TabBottomSheet extends StatefulWidget {
  const TabBottomSheet({super.key});

  @override
  State<TabBottomSheet> createState() => _TabBottomSheetState();
}

class _TabBottomSheetState extends State<TabBottomSheet>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Container(
          width: 40,
          height: 4,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(height: 20),
        TabBar(
          controller: _tabController,
          labelColor: const Color.fromRGBO(255, 87, 87, 1),
          unselectedLabelColor: Colors.grey,
          indicatorColor: const Color.fromRGBO(255, 87, 87, 1),
          tabs: const [
            Tab(text: 'Login'),
            Tab(text: 'Create Account'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              LoginTab(),
              SignupTab(),
            ],
          ),
        ),
      ],
    );
  }
}



