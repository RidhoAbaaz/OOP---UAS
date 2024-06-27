import 'package:flutter/material.dart';
import 'components/categories.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/popular_product.dart';
import 'components/special_offers.dart';
import '../../../models/Product.dart';
import 'components/search_results_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              HomeHeader(
                  searchController: _searchController,
                  onSearch: _performSearch),
              const DiscountBanner(),
              const Categories(),
              const SpecialOffers(),
              const SizedBox(height: 20),
              const PopularProducts(
                searchQuery: '',
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  void _performSearch(String query) {
    // Perform search logic here based on query
    // For now, let's simulate search results with demoProducts
    List<Product> searchResults = demoProducts
        .where((product) =>
            product.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchResultsScreen(searchResults: searchResults),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
