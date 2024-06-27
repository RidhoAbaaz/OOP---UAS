import 'package:flutter/material.dart';
import '../../../models/Product.dart';
import '../../details/details_screen.dart';

class SearchResultsScreen extends StatelessWidget {
  static const routeName = '/search_results';

  final List<Product> searchResults;

  const SearchResultsScreen({Key? key, required this.searchResults})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: searchResults.isEmpty
          ? Center(child: Text('No products found'))
          : ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(
                    searchResults[index].images[0],
                    fit: BoxFit.cover,
                    width: 60,
                  ),
                  title: Text(searchResults[index].title),
                  subtitle: Text('\Rp. ${searchResults[index].price}'),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      DetailsScreen.routeName,
                      arguments: ProductDetailsArguments(
                        product: searchResults[index],
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
