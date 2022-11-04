import 'package:flutter/material.dart';
class Searchpage extends StatelessWidget {
  const Searchpage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text('Search',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.teal), onPressed: () {
            showSearch(context: context, delegate: MySearchDelegate(),
            );
          },
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image(image: AssetImage("images/srh.png"),
                ),
              ),
              Padding(padding: EdgeInsets.all(10),),
              Title(color: Colors.black, child: const Text('Rajkiya Engineering College Bijnor',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),textAlign: TextAlign.center,),),
              Padding(padding: EdgeInsets.all(10),),
              Image(image: AssetImage('images/RECB_Campus-view.jpg')),
            ],
          ),
        ),
      ),
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'TCS',
    'WIPRO',
    'Wipro',
    'tcs',
    'google',
    'Google',
    'Microsoft',
    'Adobe',
    'Apple',
    'Paytm',
    'Intel',
    'apple',
    'hp',
    'dell',
    'Dell'
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(onPressed: () {
      if (query.isEmpty) {
        close(context, null);
      }
      query = '';
    }, icon: const Icon(Icons.clear),);
  }
  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(onPressed: () =>
        close(context, null),
      icon: const Icon(Icons.arrow_back),);
  }
  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child:  Text(query,style: const TextStyle(fontSize: 64,fontWeight: FontWeight.bold),),
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = query.isEmpty? searchResults:searchResults.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      physics:  const ScrollPhysics(
          parent: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics())
      ),
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          leading: const Icon(Icons.location_city_rounded),
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
          },
        );
      },

    );

  }
}


